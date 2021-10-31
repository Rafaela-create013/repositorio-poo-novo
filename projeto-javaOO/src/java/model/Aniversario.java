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
public class Aniversario{
    public int dia;
    public int mes;
    public int ano;
    
    /**
     * Construtor para inicializar com o meu aniversario
     */
    
    public Aniversario(){
        dia = 26;
        mes = 8;
        ano = 2021;
    }
    
    public String getAniversario(){
        String data  = "";
        if(dia<10) data += "0";
        data += dia+"/";
        if(mes<10) data += "0";
        data += mes+"/";
        data += ano;
        return data;
    }
    
}
