package com.rpise;

import java.io.*;
import java.util.*;
/**
 * @author Rajesh Patkar
 */
public class PiggyBankPersistent {
    private int balance;
    private int tcount;
    private int[]  lt;
    private int size;
    private int count;
    private String fileName;
    private boolean persist;
    public PiggyBankPersistent() {
        lt = new int[10];
        size = 10;
        if(persist) persist();
    }
    public PiggyBankPersistent(int v) {
        lt = new int[v];
        size = v;
        if(persist) persist();
    }
    public int getBalance(){
        return balance;
    }
    public int getTransactionCount(){
        return tcount;
    }
    
    public int getSize(){
        return size;
    }
    public void setDeposit(int v){
        deposit(v);
        if(persist) persist();
    }
    public void setWithdraw(int v){
        withdraw(v);
        if(persist) persist();
    }
    public void deposit(int v){
        balance = balance + v;
       saveTransaction(v);         
    }
    public void withdraw(int v){
        if(balance >= v){
            balance = balance - v;
            saveTransaction(-v);   
        }
    }
    private void saveTransaction(int v){
        if(count == size){
            for(int i=0; i<lt.length-1; i++){
                lt[i] = lt[i+1];
            }
            lt[size-1] = v;
        }
        else
        {
            lt[count++]=v;
        }
        tcount++;
    }
    public String getStatement(){
         String statement = "";
         for(int v : lt){
             statement = statement + v + ",";
         }
         return statement;
    }
    
    public int getLastTransaction(){
        if(count==10) return lt[9];
        if(count == 0) return -1;
        return lt[count-1];
    }
    
    public void setFileName(String fileName){
        this.fileName = fileName;
    }
    
    public String getFileName(){
        return fileName;
    }
    
    public void setPersist(boolean persist){
        this.persist = persist;
    }
    
    public boolean getPersist(){
        return this.persist;
    }
    public void persist() {
       /* 1) 
            try statement is used to capture the Exception
            raised due to some dyfunctional statement.
           2) 
            We are creating PrintWriter for every call of persist.This
            may not be efficient. Other alternative exists, can you think of them?
        */
        try{
             if(fileName!=null){
                    PrintWriter fos = new PrintWriter(
                                                  new BufferedWriter(
                                                        new FileWriter(fileName,true)
                                                  ),true
                                             );
              fos.println("---------------------------------");  
              fos.println(new Date());
             fos.println("Balance = "+ getBalance());
             fos.println("Last-" + size + "-Transactions  :: "+ getStatement());            
             fos.println("Total Transaction :: " + getTransactionCount());
             fos.println("-----------------------------------");
            }
        }catch(Exception e ){
             throw new RuntimeException(e.getCause());
        }
    }
}
