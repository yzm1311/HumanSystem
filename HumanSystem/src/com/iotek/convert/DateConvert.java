package com.iotek.convert;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class DateConvert implements Converter<String,Date> {
    public Date convert(String s) {
        if(s!=null && !"".equals(s)) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Date date = sdf.parse(s);
                return date;
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
