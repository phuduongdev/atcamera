/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import java.io.Serializable;
import java.sql.Timestamp;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/**
 *
 * @author DTP
 */
public class CommonUse implements Serializable {

    private static final long serialVersionUID = 1L;

    public static String generateUUID() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();

    }

//    public static Timestamp generateCreatedDate() {
//        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        Date date = new Date();
//        LocalDateTime datetime = 
//        return new Timestamp(date.getTime());
//    }
    public static List<String> generateSevenDayFromCurrent() {
        List<String> sevenDayOfMonth = new ArrayList<>();
        Calendar date = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        for (int i = 0; i < 7; i++) {
            date.add(Calendar.DAY_OF_MONTH, 0);
            if (i > 0) {
                date.add(Calendar.DAY_OF_MONTH, 1);
            }
            // Create new instance of cal
            Calendar tmp = Calendar.getInstance();
            //Makes its inner values the same
            tmp.setTime(date.getTime());
            // Add unique instance to list
            sevenDayOfMonth.add(sdf.format(tmp.getTime()));
        }
        return sevenDayOfMonth;
    }

    public static String shortUID(String s) {
//        if (s.length() > 5) {
//            int position = s.length() - 5;
//            s = s.substring(position);
//            return s;
//        } 
        return s;
    }

    public static String changePriceToVND(double priceInput) {
        try {
            double price = priceInput;
            Locale locale = new Locale("vi", "VN");
            Currency currency = Currency.getInstance("VND");

            DecimalFormatSymbols df = DecimalFormatSymbols.getInstance(locale);
            df.setCurrency(currency);
            NumberFormat numberFormat = NumberFormat.getCurrencyInstance(locale);
            numberFormat.setCurrency(currency);
//            System.out.println();
            return numberFormat.format(price);
        } catch (Exception e) {
            e.getStackTrace();
        }
        return "";
    }
}
