/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Rafaela
 */
public class Data {
    public int dia;
    public int mes;
    public int ano;
    
    public String getData(){
        String data = "";
        if(dia<10) data += "0";
        data += dia+ "/";
        if(mes<10) data += "0";
        data += mes+ "/";
        if(ano<10) data += "0";
        data += ano;
     return data;
    }
}
