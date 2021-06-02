/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Events;

/**
 *
 * @author Sudesh Niroshan
 */

import java.io.Serializable;

public class CalendarDTO implements Serializable {

    private int id;
    private String title;
    private String date;
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStart() {
        return date;
    }

    public void setStart(String date) {
        this.date = date;
    }


}
