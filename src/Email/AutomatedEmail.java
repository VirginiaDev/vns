package Email;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import beans.contact;
import beans.free_audit;
import beans.quick_enquiry;
import dao.ApiController;

public class AutomatedEmail {

	public static void main(String args[]) {
	
		
		ApiController apiController=new ApiController();
		ArrayList<String> names=new ArrayList<String>();
		ArrayList<String> email_ids=new ArrayList<String>();
		ArrayList<String> type=new ArrayList<String>();
		ArrayList<String> ids=new ArrayList<String>();
		ArrayList<free_audit> fa=apiController.getFreeAuditConfirmationPendingMailIds();
		

		ArrayList<contact> co=apiController.getContactConfirmationPendingMailIds();

		ArrayList<quick_enquiry> qe=apiController.getQuickEnquiryConfirmationPendingMailIds();
		if(fa.size()!=0) {
			for(int a=0;a<fa.size();a++) {
				names.add(fa.get(a).getName());
				email_ids.add(fa.get(a).getEmail());
				type.add("free_audit_confirm_wait");
				ids.add(Integer.toString(fa.get(a).getId()));
			}
		}
		if(co.size()!=0) {
			for(int b=0;b<co.size();b++) {
				names.add(co.get(b).getName());
				email_ids.add(co.get(b).getEmail());
				type.add("contact_confirm_wait");
				ids.add(Integer.toString(co.get(b).getId()));
			}
		}if(qe.size()!=0) {
			for(int c=0;c<co.size();c++) {
				names.add(qe.get(c).getName());
				email_ids.add(qe.get(c).getEmail());
				type.add("quick_enquiry_confirm_wait");
				ids.add(Integer.toString(qe.get(c).getId()));
			}
		}
		EmailSendThread emailSendThread=new EmailSendThread();
		for(int d=0;d<names.size();d++)
		{
			emailSendThread.SendConfirmationWaitingEmail(names.get(d), email_ids.get(d), type.get(d), Integer.parseInt(ids.get(d)));
		}


	}
}
