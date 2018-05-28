package com.neptune.supernova;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Authenticator;
import java.rmi.RemoteException;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.neptunesoftware.supernova.ws.client.SupernovaWebServiceEndpointPort;
import com.neptunesoftware.supernova.ws.client.SupernovaWebServiceEndpoint_Impl;
import com.neptunesoftware.supernova.ws.client.security.BasicHTTPAuthenticator;
import com.neptunesoftware.supernova.ws.common.XAPIException;
import com.neptunesoftware.supernova.ws.server.account.data.AccountBlockRequestData;
import com.neptunesoftware.supernova.ws.server.account.data.AccountBlockResponseData;
import com.neptunesoftware.supernova.ws.server.account.data.AmountBlockRequestData;
import com.neptunesoftware.supernova.ws.server.account.data.AmountBlockResponseData;
import com.neptunesoftware.supernova.ws.server.account.data.BalanceEnquiryRequestData;
import com.neptunesoftware.supernova.ws.server.account.data.BalanceEnquiryResponseData;
import com.neptunesoftware.supernova.ws.server.transfer.data.FinancialInstitutionListHeader;
import com.neptunesoftware.supernova.ws.server.transfer.data.FinancialInstitutionListRecord;
import com.neptunesoftware.supernova.ws.server.transfer.data.FinancialInstitutionListRequest;
import com.neptunesoftware.supernova.ws.server.transfer.data.FinancialInstitutionListResponse;
import com.neptunesoftware.supernova.ws.server.transfer.data.FundTransferAdviceCreditRequest;
import com.neptunesoftware.supernova.ws.server.transfer.data.FundTransferAdviceCreditResponse;
import com.neptunesoftware.supernova.ws.server.transfer.data.FundTransferAdviceDebitRequest;
import com.neptunesoftware.supernova.ws.server.transfer.data.FundTransferAdviceDebitResponse;
import com.neptunesoftware.supernova.ws.server.transfer.data.FundTransferSingleCreditRequest;
import com.neptunesoftware.supernova.ws.server.transfer.data.FundTransferSingleCreditResponse;
import com.neptunesoftware.supernova.ws.server.transfer.data.FundTransferSingleDebitRequest;
import com.neptunesoftware.supernova.ws.server.transfer.data.FundTransferSingleDebitResponse;
import com.neptunesoftware.supernova.ws.server.transfer.data.MandateAdviceRequestData;
import com.neptunesoftware.supernova.ws.server.transfer.data.MandateAdviceResponseData;
import com.neptunesoftware.supernova.ws.server.transfer.data.NameInquiryRequestData;
import com.neptunesoftware.supernova.ws.server.transfer.data.NameInquiryResponseData;
import com.neptunesoftware.supernova.ws.server.transfer.data.TSQuerySingleRequest;
import com.neptunesoftware.supernova.ws.server.transfer.data.TSQuerySingleResponse;
import com.thoughtworks.xstream.XStream;

@Controller

public class TestController {

	private static Logger logger;
	private Gson gson;
	static SupernovaWebServiceEndpointPort port = null;

	public TestController() {
		if(logger == null){
			logger = LoggerFactory.getLogger(TestController.class);
		}
		if(gson == null){
			gson = new Gson();
		}
		if (port != null)
			return;

		Authenticator.setDefault(new BasicHTTPAuthenticator("proxy_user", "proxy_password"));

		System.setProperty("javax.xml.rpc.ServiceFactory", "weblogic.webservice.core.rpc.ServiceFactoryImpl");

		System.setProperty("javax.xml.soap.MessageFactory",
				"com.sun.xml.messaging.saaj.soap.ver1_1.SOAPMessageFactory1_1Impl");

		try {
			port = new SupernovaWebServiceEndpoint_Impl(
					"http://10.152.2.231:9004/supernovaws/snwebservice?wsdl")
					.getSupernovaWebServiceEndpointPort();

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	//Created maven local repository. Setup jars using maven setup, environment path variable setup and maven install-file syntax. Added dependencies.
	
	static String pascalCase(String s){
		return s.substring(0, 1).toUpperCase() + s.substring(1);
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("In home page");
		System.out.println("Home at last");

		return "home";
	}

	interface ResponseData{
		String toString();
		String getResponseCode();
	}
	
	// NAME INQUIRY STARTS HERE
	@RequestMapping(value = "/nameInquirySubmit", method = RequestMethod.GET)
	@ResponseBody
	public String nameInquirySubmit(@ModelAttribute NameInquiryRequestData inquiryRequest) throws RemoteException, XAPIException {
		logger.info("In nameInquirySubmit post method");
		System.out.println("In nameInquirySubmit post method");
				
		NameInquiryResponseData inquiryResponse = port.nameenquirysingleitem(inquiryRequest);

		return getResponse(inquiryResponse, "NESingleResponse");
	}
	// NAME INQUIRY ENDS HERE
	
	private String getResponse(Object responseData, String shortName) {
		ArrayList<String> result = new ArrayList<String>();

		try {
			String responseCode = responseData.getClass().getMethod("getResponseCode").invoke(responseData).toString();

			String msg = Constants.getResponseMessage(responseCode);
			String response = "";
			if (responseCode.equals("00"))
				response = getResultSet(responseData, "NESingleResponse");

			result.add(msg);
			result.add(response);

			System.out.println(responseCode);
			System.out.println(result.get(0));
			System.out.println(result.get(1));
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return gson.toJson(result);
	}
	
	// ACCOUNT BLOCK STARTS HERE
	@RequestMapping(value = "/accountBlock", method = RequestMethod.GET)
	public String accountBlock(Model model) {
		logger.info("In account block get method");

		AccountBlockRequestData acctBlockRequest = new AccountBlockRequestData();

		model.addAttribute("request", acctBlockRequest);

		return "account_block";
	}

	@RequestMapping(value = "/accountBlockSubmit", method = RequestMethod.POST)
	public String accountBlockSubmit(@ModelAttribute AccountBlockRequestData acctBlockRequest, Model model)
			throws RemoteException, XAPIException {
		logger.info("In account block post method");

		AccountBlockResponseData accBlockResponse = port.accountblock(acctBlockRequest);

		String responseCode = accBlockResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = accBlockResponse.toString();

		model.addAttribute("request", acctBlockRequest);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "account_block";
	}
		// ACCOUNT BLOCK ENDS HERE

	
	// ACCOUNT UNBLOCK STARTS HERE
	@RequestMapping(value = "/accountUnblock", method = RequestMethod.GET)
	public String accountUnblock(Model model) {
		logger.info("In account unblock get method");

		AccountBlockRequestData acctUnblockRequest = new AccountBlockRequestData();

		model.addAttribute("request", acctUnblockRequest);

		return "account_unblock";
	}

	@RequestMapping(value = "/accountUnblockSubmit", method = RequestMethod.POST)
	public String accountUnblockSubmit(@ModelAttribute AccountBlockRequestData acctUnblockRequest, Model model)
			throws RemoteException, XAPIException {
		logger.info("In account unblock post method");

		AccountBlockResponseData accUnblockResponse = port.accountunblock(acctUnblockRequest);

		String responseCode = accUnblockResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = accUnblockResponse.toString();

		model.addAttribute("request", acctUnblockRequest);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "account_unblock";
	}
		// ACCOUNT UNBLOCK ENDS HERE
	

	// MANDATE ADVICE STARTS HERE
	@RequestMapping(value = "/mandateAdvice", method = RequestMethod.GET)
	public String mandateAdvice(Model model) {
		logger.info("In mandate advice get method");

		MandateAdviceRequestData mandateAdviceRequest = new MandateAdviceRequestData();

		model.addAttribute("request", mandateAdviceRequest);

		return "mandate_advice";
	}

	@RequestMapping(value = "/mandateAdviceSubmit", method = RequestMethod.POST)
	public String mandateAdviceSubmit(@ModelAttribute MandateAdviceRequestData mandateAdviceRequest, Model model)
			throws RemoteException, XAPIException {
		logger.info("In mandate advice post method");

		MandateAdviceResponseData mandateAdviceResponse = port.mandateadvice(mandateAdviceRequest);

		String responseCode = mandateAdviceResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = mandateAdviceResponse.toString();

		model.addAttribute("request", mandateAdviceRequest);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "account_unblock";
	}
		// MANDATE ADVICE ENDS HERE

	
	// FUND TRANSFER ADVICE DIRECT DEBIT STARTS HERE
	@RequestMapping(value = "/fundtransferAdvice_dd", method = RequestMethod.GET)
	public String fundtransferAdvice_dd(Model model) {
		logger.info("In fund transfer advice debit get method");

		FundTransferAdviceDebitRequest fundtransferAdvice_ddRequest = new FundTransferAdviceDebitRequest();

		model.addAttribute("request", fundtransferAdvice_ddRequest);

		return "fund_transfer_advice_debit";
	}

	@RequestMapping(value = "/fundtransferAdvice_ddSubmit", method = RequestMethod.POST)
	public String fundtransferAdvice_ddSubmit(
			@ModelAttribute FundTransferAdviceDebitRequest fundtransferAdvice_ddRequest, Model model)
			throws RemoteException, XAPIException {
		logger.info("In fund transfer advice debit post method");

		FundTransferAdviceDebitResponse fundTranseAdvice_ddResponse = port
				.fundtransferAdvicedd(fundtransferAdvice_ddRequest);

		String responseCode = fundTranseAdvice_ddResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = fundTranseAdvice_ddResponse.toString();

		model.addAttribute("request", fundtransferAdvice_ddRequest);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "fund_transfer_advice_debit";
	}

	// FUND TRANSFER ADVICE DIRECT DEBIT ENDS HERE

	
	// FUND TRANSFER ADVICE DIRECT CREDIT STARTS HERE
	@RequestMapping(value = "/fundtransferAdvice_dc", method = RequestMethod.GET)
	public String fundtransferAdvice_dc(Model model) {
		logger.info("In fund transfer advice credit get method");

		FundTransferAdviceCreditRequest fundtransferAdvice_dcRequest = new FundTransferAdviceCreditRequest();

		model.addAttribute("request", fundtransferAdvice_dcRequest);

		return "fund_transfer_advice_credit";
	}

	@RequestMapping(value = "/fundtransferAdvice_dcSubmit", method = RequestMethod.POST)
	public String fundtransferAdvice_ddSubmit(
			@ModelAttribute FundTransferAdviceCreditRequest fundtransferAdvice_dcRequest, Model model)
			throws RemoteException, XAPIException {
		logger.info("In fund transfer advice credit post method");

		FundTransferAdviceCreditResponse fundTranseAdvice_dcResponse = port
				.fundtransferAdvicedc(fundtransferAdvice_dcRequest);

		String responseCode = fundTranseAdvice_dcResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = fundTranseAdvice_dcResponse.toString();

		model.addAttribute("request", fundtransferAdvice_dcRequest);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "fund_transfer_advice_credit";
	}
	// FUND TRANSFER ADVICE DIRECT CREDIT ENDS HERE

	
	// FUND TRANSFER DIRECT CREDIT STARTS HERE
	@RequestMapping(value = "/fundTransferDC", method = RequestMethod.GET)
	public String fundTransferDC(Model model) {
		logger.info("In fund transfer  credit get method");

		FundTransferSingleCreditRequest fundTransferDC = new FundTransferSingleCreditRequest();

		model.addAttribute("request", fundTransferDC);

		return "fund_transfer_credit";
	}

	@RequestMapping(value = "/fundtransferDCSubmit", method = RequestMethod.POST)
	public String fundtransferDCSubmit(@ModelAttribute FundTransferSingleCreditRequest fundTransferDC, Model model)
			throws RemoteException, XAPIException {
		logger.info("In fund transfer credit post method");

		FundTransferSingleCreditResponse fundTranseDCResponse = port.fundtransfersingleitemdc(fundTransferDC);

		String responseCode = fundTranseDCResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = fundTranseDCResponse.toString();

		model.addAttribute("request", fundTransferDC);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "fund_transfer_credit";
	}
	// FUND TRANSFER DIRECT CREDIT ENDS HERE

	
	// FUND TRANSFER DIRECT DEBIT STARTS HERE
	@RequestMapping(value = "/fundTransferDD", method = RequestMethod.GET)
	public String fundTransferDD(Model model) {
		logger.info("In fundTransferDD get method");

		FundTransferSingleDebitRequest fundTransferDD = new FundTransferSingleDebitRequest();

		model.addAttribute("request", fundTransferDD);

		return "fund_transfer_debit";
	}

	@RequestMapping(value = "/fundtransferDDSubmit", method = RequestMethod.POST)
	public String fundtransferDDSubmit(@ModelAttribute FundTransferSingleDebitRequest fundTransferDD, Model model)
			throws RemoteException, XAPIException {
		logger.info("In fundtransferDDSubmit post method");

		FundTransferSingleDebitResponse fundTranseDDResponse = port.fundtransfersingleitemdd(fundTransferDD);

		String responseCode = fundTranseDDResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = fundTranseDDResponse.toString();

		model.addAttribute("request", fundTransferDD);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "fund_transfer_debit";
	}
	// FUND TRANSFER DIRECT DEBIT ENDS HERE

	
	// TRANSACTION STATUS REQUEST STARTS HERE
	@RequestMapping(value = "/transactionStatus", method = RequestMethod.GET)
	public String transactionStatus(Model model) {
		logger.info("In transactionStatus get method");

		TSQuerySingleRequest transactionRequest = new TSQuerySingleRequest();

		model.addAttribute("request", transactionRequest);

		return "transaction_status";
	}

	@RequestMapping(value = "/transactionStatusSubmit", method = RequestMethod.POST)
	public String transactionStatusSubmit(@ModelAttribute TSQuerySingleRequest transactionRequest, Model model)
			throws RemoteException, XAPIException {
		logger.info("In transactionStatusSubmit post method");

		TSQuerySingleResponse transactStatResponse = port.transactionStatusQuery(transactionRequest);

		String responseCode = transactStatResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = transactStatResponse.toString();

		model.addAttribute("request", transactionRequest);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "transaction_status";
	}
	// TRANSACTION STATUS REQUEST ENDS HERE

	
	// BALANCE ENQUIRY REQUEST STARTS HERE
	@RequestMapping(value = "/balanceEnquiry", method = RequestMethod.GET)
	public String balanceEnquiry(Model model) {
		logger.info("In balanceEnquiry get method");

		BalanceEnquiryRequestData balEnqRequestData = new BalanceEnquiryRequestData();

		model.addAttribute("request", balEnqRequestData);

		return "balance_enquiry";
	}

	@RequestMapping(value = "/balanceEnquirySubmit", method = RequestMethod.POST)
	public String balanceEnquirySubmit(@ModelAttribute BalanceEnquiryRequestData balEnqRequestData, Model model)
			throws RemoteException, XAPIException {
		logger.info("In balanceEnquirySubmit post method");

		BalanceEnquiryResponseData balEnqResponse = port.balanceenquiry(balEnqRequestData);

		String responseCode = balEnqResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = balEnqResponse.toString();

		model.addAttribute("request", balEnqRequestData);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "balance_enquiry";
	}
	// BALANCE ENQUIRY REQUEST ENDS HERE

	
	// AMOUNT BLOCK REQUEST STARTS HERE
	@RequestMapping(value = "/amountBlock", method = RequestMethod.GET)
	public String amountBlock(Model model) {
		logger.info("In amountBlock get method");

		AmountBlockRequestData amtBlockRequestData = new AmountBlockRequestData();

		model.addAttribute("request", amtBlockRequestData);

		return "amount_block";
	}

	@RequestMapping(value = "/amountBlockSubmit", method = RequestMethod.POST)
	public String amountBlockSubmit(@ModelAttribute AmountBlockRequestData amtBlockRequestData, Model model)
			throws RemoteException, XAPIException {
		logger.info("In amountBlockSubmit post method");

		AmountBlockResponseData amtBlockResponse = port.amountblock(amtBlockRequestData);

		String responseCode = amtBlockResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = amtBlockResponse.toString();

		model.addAttribute("request", amtBlockRequestData);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "amount_block";
	}
	// AMOUNT BLOCK REQUEST ENDS HERE

	
	// AMOUNT UNBLOCK REQUEST STARTS HERE
	@RequestMapping(value = "/amountUnblock", method = RequestMethod.GET)
	public String amountUnblock(Model model) {
		logger.info("In amountUnblock get method");

		AmountBlockRequestData amtUnblockRequestData = new AmountBlockRequestData();

		model.addAttribute("request", amtUnblockRequestData);

		return "amount_unblock";
	}

	@RequestMapping(value = "/amountUnblockSubmit", method = RequestMethod.POST)
	public String amountUnblockSubmit(@ModelAttribute AmountBlockRequestData amtUnblockRequestData, Model model)
			throws RemoteException, XAPIException {
		logger.info("In amountUnblockSubmit post method");

		AmountBlockResponseData amtUnblockResponse = port.amountunblock(amtUnblockRequestData);

		String responseCode = amtUnblockResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = amtUnblockResponse.toString();

		model.addAttribute("request", amtUnblockRequestData);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "amount_unblock";
	}
	// AMOUNT UNBLOCK REQUEST ENDS HERE
	
	
	// FINANCIAL INSTITUTION LIST STARTS HERE
	@RequestMapping(value = "/financialInstList", method = RequestMethod.GET)
	public String financialInstList(Model model) {
		logger.info("In financialInstList get method");
		
		FinancialInstitutionListHeader finInstLstHeader = new FinancialInstitutionListHeader();

		FinancialInstitutionListRequest finInstLstRequestData = new FinancialInstitutionListRequest();

		model.addAttribute("listHeader", finInstLstHeader);
		model.addAttribute("request", finInstLstRequestData);

		return "financial_institutions";
	}

	@RequestMapping(value = "/financialInstListSubmit", method = RequestMethod.POST)
	public String financialInstListSubmit(@ModelAttribute FinancialInstitutionListRequest finInstLstRequestData, 
			@ModelAttribute FinancialInstitutionListHeader finInstLstHeader, Model model)
			throws RemoteException, XAPIException {
		logger.info("In financialInstListSubmit post method");

		FinancialInstitutionListResponse finInstLstResponse = port.financialInstitutionList(finInstLstRequestData);

		String responseCode = finInstLstResponse.getResponseCode();

		String msg = Constants.getResponseMessage(responseCode);
		String response = "";
		if (responseCode == "00")
			response = finInstLstResponse.toString();

		setFinancialList(finInstLstRequestData, finInstLstHeader);

		model.addAttribute("listHeader", finInstLstHeader);
		model.addAttribute("request", finInstLstRequestData);
		model.addAttribute("msg", msg);
		model.addAttribute("response", response);

		return "financial_institutions";
	}
	
	private void setFinancialList(FinancialInstitutionListRequest finInstLstRequestData, FinancialInstitutionListHeader finInstLstHeader){
		FinancialInstitutionListRecord[] arrayOfFinInstLstRecord = 
				new FinancialInstitutionListRecord[Integer.parseInt(finInstLstHeader.getNumberOfRecords())];
		
		for(int i = 0; i<Integer.parseInt(finInstLstHeader.getNumberOfRecords()); i++) {
			FinancialInstitutionListRecord finInstLstRecord = new FinancialInstitutionListRecord();
			
			finInstLstRecord.setInstitutionCode("00" + i);
			finInstLstRecord.setInstitutionName("Institution " + i);
			finInstLstRecord.setCategory(Integer.toString(i));//2 commercial bank
			
			arrayOfFinInstLstRecord[i] = finInstLstRecord;
		}
		
		finInstLstRequestData.setHeader(finInstLstHeader);
		finInstLstRequestData.setRecord(arrayOfFinInstLstRecord);		
	}
	// FINANCIAL INSTITUTION LIST ENDS HERE
	
//	public static void main(String[]args) throws RemoteException, XAPIException{
//		TestController test = new TestController();
//		NameInquiryRequestData inquiryRequest = new NameInquiryRequestData();
//		inquiryRequest.setAccountNumber("3000059122");
//		inquiryRequest.setChannelCode("9");
//		inquiryRequest.setSessionId("");
//		inquiryRequest.setDestinationInstitutionCode("99");
//		
//		String[] res = test.nameInquirySubmit(inquiryRequest).split(",");
//		
//		System.out.println(res[1]);
//	}
	
	public String getResultSet(Object response, String shortName) {
		String result = "";

		try {
			Field[] fields = response.getClass().getDeclaredFields();
			result += "<"+shortName+">";
			for (Field field : fields) {
				String name = field.getName();
				String value = getValue(field, response);
				result += "\n\t<" + name + ">" + value + "</" + name + ">";
			}
			result += "\n</"+shortName+">";
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return result;
	}
	
	static String getValue(Field field, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException, NoSuchMethodException, SecurityException{
		String methodName = "get" + pascalCase(field.getName());
		Method method = obj.getClass().getMethod(methodName);
		String val = method.invoke(obj) == null ? "null" : method.invoke(obj).toString();		
		
		return val;
	}
	
	@SuppressWarnings("unused")
	private String objectToXml(Object response, @SuppressWarnings("rawtypes") Class cls) {
        XStream xstream = new XStream();
        xstream.alias(cls.getSimpleName(), cls);
        return xstream.toXML(response); 
    }
}
