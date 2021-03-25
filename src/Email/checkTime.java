package Email;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class checkTime {
public String getServerDateTime(){
		
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
        String server_datetime = String.valueOf(sdf.format(cal.getTime()));
        System.out.println("server_datetime=>>"+server_datetime);
        String test="2020-09-17 10:54:46";
        System.out.println("test=>>"+test);
        
		
	/*	 cal.add(Calendar.HOUR, +5); cal.add(Calendar.MINUTE, 00);
		  cal.add(Calendar.SECOND, 00); */
		 
      //  server_datetime = String.valueOf(sdf.format(cal.getTime()));
      //  System.out.println("server_datetime=>>"+server_datetime);
        try {
			Date d1=sdf.parse(server_datetime);
			Date d2=sdf.parse(test);
			 long difference_In_Time 
             = d1.getTime() - d2.getTime();

	            long difference_In_Hours 
	                = (difference_In_Time 
	                   / (1000 * 60 * 60)) 
	                  % 24;
	            long difference_In_Days 
                = (difference_In_Time 
                   / (1000 * 60 * 60 * 24)) 
                  % 365;
				long diffMinutes = difference_In_Time / (60 * 1000) % 60;

	          System.out.println("difference in hours==="+difference_In_Hours);
	          System.out.println("difference in days==="+difference_In_Days);
	          System.out.println("difference in minutes==="+diffMinutes);
	          final int MILLI_TO_HOUR = 1000 * 60 * 60;
	          final int MILLI_TO_MIN = 1000 * 60;
	          int hours=(int) (d1.getTime() - d2.getTime()) / MILLI_TO_HOUR;
	          int mins=(int) (d1.getTime() - d2.getTime()) / MILLI_TO_MIN;
	          System.out.println("difference in hourshours==="+hours);
	          System.out.println("difference in minsminss==="+mins);
	          


		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        
        
		return server_datetime;
	}

	public static void main(String args[]) {
		checkTime checkTime=new checkTime();
		String time_value=checkTime.getServerDateTime();

}
}
