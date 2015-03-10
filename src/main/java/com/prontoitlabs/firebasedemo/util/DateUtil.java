package com.prontoitlabs.firebasedemo.util;

import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class DateUtil {

    private static final String ASIA_CALCUTTA = "Asia/Calcutta";

    private DateUtil() {
    }

    public static Date now(){
        return Calendar.getInstance(TimeZone.getTimeZone("UTC")).getTime();
    }
     /**
     * Date itself does not contain any TimeZone information. We can convert a Date to a particular
     * timezone, but, can never make a Date contain TimeZone information. Where ever the server is,
     * this method will convert the Date to IST Date.
     * 
     * @return
     */
    public static Date getCurrentDateInIST() {
        Date now = new Date();
        return offsetTimeZone(now, TimeZone.getDefault().getID(), ASIA_CALCUTTA);
    }
    
    public static Date getTomorrowDateInIST() {
        Date now = new Date();
        Calendar c = Calendar.getInstance();
        c.setTime(now);
        c.add(Calendar.DATE, 1);
        return offsetTimeZone(c.getTime(), TimeZone.getDefault().getID(), ASIA_CALCUTTA);
    }

    private static Date offsetTimeZone(Date date, String fromTZ, String toTZ) {

        // Construct FROM and TO TimeZone instances
        TimeZone fromTimeZone = TimeZone.getTimeZone(fromTZ);
        TimeZone toTimeZone = TimeZone.getTimeZone(toTZ);

        // Get a Calendar instance using the default time zone and locale.
        Calendar calendar = Calendar.getInstance();

        // Set the calendar's time with the given date
        calendar.setTimeZone(fromTimeZone);
        calendar.setTime(date);

        // FROM TimeZone to UTC
        calendar.add(Calendar.MILLISECOND, fromTimeZone.getRawOffset() * -1);

        if(fromTimeZone.inDaylightTime(calendar.getTime())) {
            calendar.add(Calendar.MILLISECOND, calendar.getTimeZone().getDSTSavings() * -1);
        }

        // UTC to TO TimeZone
        calendar.add(Calendar.MILLISECOND, toTimeZone.getRawOffset());

        if(toTimeZone.inDaylightTime(calendar.getTime())) {
            calendar.add(Calendar.MILLISECOND, toTimeZone.getDSTSavings());
        }

        return calendar.getTime();

    }
}
