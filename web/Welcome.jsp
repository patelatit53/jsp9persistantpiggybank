<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">

        <title>Piggy Bank Persistent</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <h1>Welcome to PiggyBankPersistent</h1>
                </div>
                <jsp:useBean id="pg1" class="com.rpise.PiggyBankPersistent" scope="application"/>
            </div>
            <div class="row">
                <div class="col-md-2 ">
                    <label  class= "label label-primary">
                        Balance
                    </label>
                </div>
                <div  class="col-md-3">
                    <label >
                        <jsp:getProperty name="pg1" property="balance"/>
                    </label>  
                </div>
            </div>
            <div class="row">

                <div class="col-md-2">
                    <label class= "label label-primary">
                        Total Transactions
                    </label>
                </div>
                <div  class="col-md-3">
                    <label>
                        <jsp:getProperty name="pg1" property="transactionCount"/>
                    </label>  
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <label class= "label label-primary">
                        Transaction Details
                    </label>
                </div>
                <div  class="col-md-9">
                    <label>
                        <jsp:getProperty name="pg1" property="statement"/>
                    </label>  
                </div>
            </div>
                     <div class="row">
                <div class="col-md-2">
                    <label class= "label label-primary">
                        Persist Status
                    </label>
                </div>
                <div  class="col-md-9">
                    <label>
                        <jsp:getProperty name="pg1" property="persist"/>
                    </label>  
                </div>
            </div>
                    <div class="row">
                <div class="col-md-2">
                    <label class= "label label-primary">
                        File to be used for Persistence.
                    </label>
                </div>
                <div  class="col-md-9">
                    <label>
                        <jsp:getProperty name="pg1" property="fileName"/>
                    </label>  
                </div>
            </div>
                    <div class="row"><br/></div>       
                    
           <div class="row">
                <div class="col-md-1">
                    <a class= "btn btn-success" href="Deposit.jsp">
                             Deposit
                    </a>
                </div>
                <div  class="col-md-1">
                    <a class="btn btn-warning" href="Withdraw.jsp">
                        Withdraw
                    </a>  
                </div>
            </div>
        </div>
    </body>
</html>
