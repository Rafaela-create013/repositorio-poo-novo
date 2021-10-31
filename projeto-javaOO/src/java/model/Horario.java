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
public class Horario {
    public int hora;
    public void setHora(int hora){
        if(hora<0) this.hora = 00;
        else if (hora > 24) this.hora = 00;
        else this.hora = hora;
    }
    public int getHora(){
        return hora;
    }
    
    
    public int minuto;
    public void setMinuto(int minuto){
        if(minuto<0) this.minuto = 00;
        else if (minuto > 59) this.minuto = 00;
        else this.minuto = minuto;
    }
    public int getMinuto(){
        return minuto;
    }
    
    
    public int segundos;
    public void setSegundos(int segundos){
        if(segundos<0) this.segundos = 00;
        else if (segundos > 59) this.segundos = 00;
        else this.segundos = segundos;
    }
    public int getSegundos(){
        return segundos;
    }
    
    /**
     * Construtor para inicializar esse horario padrão
     */
    
    public Horario(){
    hora = 22; 
    minuto = 00;
    segundos = 00;
    }
        public Horario(int hora, int minuto, int segundos){
        this.setHora(hora);
        this.setMinuto(minuto);
        this.segundos = segundos;
    }
    
        public String getHorario(){
        String horario  = "";
        if(hora>59) horario += "00";
        horario += hora+":";
        if(minuto>59) horario += "00";
        horario += minuto+":";
        if(segundos>59) horario += "00";
        horario += segundos;
        return horario;
    }
   
}
