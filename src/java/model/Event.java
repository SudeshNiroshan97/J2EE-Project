/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Sudesh Niroshan
 */
public class Event {
        private String eventname;
        private String description;
        private String date;
        private String starttime;
        private String endtime;
        private String venue;
        private String university;
        private String defaultval;

    public Event(String eventname, String description, String date, String starttime, String endtime, String venue, String university, String defaultval) {
        this.eventname = eventname;
        this.description = description;
        this.date = date;
        this.starttime = starttime;
        this.endtime = endtime;
        this.venue = venue;
        this.university = university;
        this.defaultval = defaultval;
    }

    public String getEventname() {
        return eventname;
    }

    public void setEventname(String eventname) {
        this.eventname = eventname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public String getVenue() {
        return venue;
    }

    public void setVenue(String venue) {
        this.venue = venue;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getDefaultval() {
        return defaultval;
    }

    public void setDefaultval(String defaultval) {
        this.defaultval = defaultval;
    }
    
        
    
    
}
