/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;

/**
 *
 * @author Mustafa Shubbar <codingbox@outlook.com>
 */

// Must implements Serializable
public class Car implements Serializable{
    
    // Properties must be private and assigned during declaration
    private String make = "";
    private String model = "";
    private String colour = "";
    private int year = 0;
    
    // Must have an empty constructor
    public Car(){}

    // All properties must have getters
    public String getMake() {
        return make;
    }
    
    // May have setters
    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }
    
    
}
