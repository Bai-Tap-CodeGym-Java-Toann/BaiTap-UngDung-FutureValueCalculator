<%--
  Created by IntelliJ IDEA.
  User: Surface Pro 4
  Date: 2018/10/19
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Future Value Calculator</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        div {
            width: 30%;
            margin: auto;
        }

        h1 {
            font-size: 3em;
            text-align: center;
        }

        input {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<%
    double invent = 0;
    double rates = 0;
    double interestrate = 0;
    int years = 0;
    boolean quest = request.getParameter("inventment") != null && request.getParameter("rate") != null && request.getParameter("years") != null;
    if (quest) {
        invent = Double.parseDouble(request.getParameter("inventment"));
        rates = Double.parseDouble(request.getParameter("rate")) / 100;
        years = Integer.parseInt(request.getParameter("years"));
        interestrate = rates * invent;
    }
    double sum = invent + (invent * interestrate * years);
%>
<div>
    <h1>Future Value Calculator</h1>
    <form class="form-group" action="index.jsp">
        Inventment Amount:
        <input name="inventment" class="form-control" placeholder="$" type="number" size="30"/>
        Yearly Interest Rate:
        <input name="rate" class="form-control" placeholder="%" type="number" size="30"/>
        Time :
        <input name="years" class="form-control" placeholder="Years" type="number" size="30"/>
        <button type="submit" class="btn btn-primary">Calculate</button>
    </form>
    <br>
    <h2>Your Money: <%=sum%>
    </h2>
</div>
</body>
</html>
