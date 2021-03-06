<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PiggyBankPersistent Client</title>
    </head>
    <body>
        <h1> This Web Component acts as a client to PiggyBankPersistent class </h1>
        <ul>
            <li>
                <h2> Creating an instance of PiggyBankPersistent </h2>
            </li>
            <jsp:useBean id="pg1" class="com.rpise.PiggyBankPersistent" scope="application" />
            <li>
                <h2> Creating filename and enabling persistence </h2>
            </li>
            <jsp:setProperty name="pg1" property="fileName" value="d:\\piggybank.txt"/>
            <jsp:setProperty name="pg1" property="persist" value="true"/>
            <li> 
                <h2> Performing a few Deposits and Withdraw operations </h2>
            </li>
            
            <jsp:setProperty name="pg1" property="deposit" value="100"/>
            <jsp:setProperty name="pg1" property="deposit" value="200"/>
            <jsp:setProperty name="pg1" property="deposit" value="300"/>
             <jsp:setProperty name="pg1" property="deposit" value="200"/>
            <jsp:setProperty name="pg1" property="deposit" value="300"/>
            <jsp:setProperty name="pg1" property="withdraw" value="10"/>
            <jsp:setProperty name="pg1" property="withdraw" value="100"/>
            <jsp:setProperty name="pg1" property="withdraw" value="10"/>
            <jsp:setProperty name="pg1" property="deposit" value="200"/>
            <jsp:setProperty name="pg1" property="deposit" value="300"/>
            <jsp:setProperty name="pg1" property="withdraw" value="100"/>
            <jsp:setProperty name="pg1" property="withdraw" value="10"/>
            <li>
                    <h2> Getting the final Balance </h2>
           </li>
            <jsp:getProperty name="pg1" property="balance"/>
             <li>
                    <h2> Getting the Transaction Count </h2>
           </li>
            <jsp:getProperty name="pg1" property="transactionCount"/>
            <li>
                <h2> Getting  Last ${applicationScope['pg1'].size} transactions </h2>
            </li>
            <jsp:getProperty name="pg1" property="statement"/>
    </body>
</html>
