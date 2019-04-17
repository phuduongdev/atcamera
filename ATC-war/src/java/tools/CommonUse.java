/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tools;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 *
 * @author DTP
 */
public class CommonUse {

    public static String generateUUID() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    public static String generateDateForSql() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        return formatter.format(date);
    }

    public static List<String> generateSevenDayFromCurrent() {
        List<String> sevenDayOfMonth = new ArrayList<>();
        Calendar date = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        
        for (int i = 0; i < 7; i++) {
            date.add(Calendar.DAY_OF_MONTH, 0);
            if(i>0){
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
}
