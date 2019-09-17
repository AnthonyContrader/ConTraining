package it.contrader.utils;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;


public class ConverterDate {
	/**
	 * Converte un tipo Date da database in stringa nel formato dd/mm/yyyy
	 * @param d
	 * @return
	 */
	public static String dateToString(Date d) {
		SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
		return sdf.format(d);
	}
	
	/**
	 * Prende una stringa data nel formato leggibile dd/mm/yyyy e lo traduce in stringa nel formato ISO
	 * Sql nel formato yyyy-mm-dd
	 * @param dateString
	 * @return
	 */
	public static String toDateString(String dateString) {
		SimpleDateFormat fromModel = new SimpleDateFormat("dd/mm/yyyy");
		SimpleDateFormat toSQL = new SimpleDateFormat("yyyy-mm-dd");
		
		String sqlDateString = "2000-01-01";
		try {
			sqlDateString = toSQL.format(fromModel.parse(dateString));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			 
		}
		return sqlDateString;
	}
	
	/**
	 *  converte un oggetto di tipo string in oggetto di tipo Date
	 * @param dateString
	 * @return
	 */
	public static Date toDate(String dateString) {
		return Date.valueOf(toDateString(dateString));
	}
	
	
	

}
