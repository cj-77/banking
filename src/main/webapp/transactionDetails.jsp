<%@ page import="java.util.List" %>
<%@ page import="login.Transaction" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
    <link rel="stylesheet" href="st.css">
</head>
<body>
<div class="history-container">
    <h1>Transaction History</h1>

    <table class="transaction-history">
        <thead>
            <tr>
                <th>Date</th>
                <th>Type</th>
                <th>Amount</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <%
            // Retrieve the list of transactions set by the servlet/controller
            List<Transaction> transactions = (List<Transaction>) request.getAttribute("transactions");

            // Check if transactions are not null and not empty
            if (transactions != null && !transactions.isEmpty()) {
                for (Transaction transaction : transactions) {
            %>
            <tr>
                <td class="date"><%= transaction.getLastTransaction() %></td>
                <td class="type"><%= transaction.getLasrTransac() %></td>
                <td class="amount">$<%= transaction.getAmount() %></td>
                <td class="description"><%= transaction.getLastTransaction() %></td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="4">No transactions found.</td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
    
    <div class="input-group">
        <button><a href="userDetails.jsp" class="button">Home Page</a></button>
    </div>
</div>
</body>
</html>
