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
    public void setMes(int mes){
        if(mes<1) this.mes = 1;
        else if (mes > 12) this.mes = 12;
        else this.mes = mes;
    }
    public int getMes(){
        return this.mes;
    }
    public int ano;
    
    /**
     * Construtor para inicializar essa data com 26/08/2021
     */
    
    public Data(){
    dia = 26; 
    mes = 8;
    ano = 2021;
    }
    
    /**
     * Construtor que inicializa a data com os parametros
     * @param dia
     * @param mes
     * @param ano
     */
    public Data(int dia, int mes, int ano){
        this.dia = dia;
        this.setMes(mes);
        this.ano = ano;
    }
    
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
