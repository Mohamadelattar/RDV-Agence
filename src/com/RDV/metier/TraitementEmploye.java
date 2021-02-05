package com.RDV.metier;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.Date;

 

public class TraitementEmploye {

    public String getDate() {
        Date aujourdhui = new Date();

        SimpleDateFormat formater = new SimpleDateFormat( "dd-MM-yyyy" );
        System.out.println( formater.format( aujourdhui ) );
        return formater.format( aujourdhui );
    }

    public String compareDates( String Date1, String Date2 )
            throws ParseException {

        String[] parts = Date1.split( "-" );
        int part1 = Integer.parseInt( parts[0] ); // days
        int part2 = Integer.parseInt( parts[1] ); // months
        int part3 = Integer.parseInt( parts[2] ); // years

        LocalDate firstDate = LocalDate.of( part3, part2, part1 );

        parts = Date2.split( "-" );
        part1 = Integer.parseInt( parts[0] ); // days
        part2 = Integer.parseInt( parts[1] ); // months
        part3 = Integer.parseInt( parts[2] ); // years

        LocalDate secondDate = LocalDate.of( part3, part2, part1 );

        Period age = Period.between( firstDate, secondDate );

        int years = age.getYears();
        int months = age.getMonths();

        String period = years + " years " + months + " months";

        return period;

    }

    public int numberOfMonths( String Date1, String Date2 )
            throws ParseException {

        String[] parts = Date1.split( "-" );
        int part1 = Integer.parseInt( parts[0] ); // days
        int part2 = Integer.parseInt( parts[1] ); // months
        int part3 = Integer.parseInt( parts[2] ); // years

        LocalDate firstDate = LocalDate.of( part3, part2, part1 );

        parts = Date2.split( "-" );
        part1 = Integer.parseInt( parts[0] ); // days
        part2 = Integer.parseInt( parts[1] ); // months
        part3 = Integer.parseInt( parts[2] ); // years

        LocalDate secondDate = LocalDate.of( part3, part2, part1 );

        Period age = Period.between( firstDate, secondDate );

        int months = age.getMonths();

        return months;
    }

    public boolean paymentAlert( String Date1, String Date2, int numberOfMonths ) {

        String[] parts = Date1.split( "-" );
        int part1 = Integer.parseInt( parts[0] ); // days
        int part2 = Integer.parseInt( parts[1] ); // months
        int part3 = Integer.parseInt( parts[2] ); // years

        LocalDate firstDate = LocalDate.of( part3, part2, part1 );

        parts = Date2.split( "-" );
        part1 = Integer.parseInt( parts[0] ); // days
        part2 = Integer.parseInt( parts[1] ); // months
        part3 = Integer.parseInt( parts[2] ); // years

        LocalDate secondDate = LocalDate.of( part3, part2, part1 );

        Period age = Period.between( firstDate, secondDate );

        int months = age.getMonths();

        if ( months - numberOfMonths >= 1 ) {
            return true;
        } else {
            return false;
        }
    }
}
