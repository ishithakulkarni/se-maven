<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Calculator</title>
</head>
<body>
    <h2>Simple Calculator</h2>
    <form method="post">
        <input type="number" name="num1" required>
        <select name="op">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input type="number" name="num2" required>
        <button type="submit">Calculate</button>
    </form>
    <%
        String n1 = request.getParameter("num1");
        String n2 = request.getParameter("num2");
        String op = request.getParameter("op");
        if (n1 != null && n2 != null && op != null) {
            double a = Double.parseDouble(n1);
            double b = Double.parseDouble(n2);
            double result = 0;
            switch (op) {
                case "+": result = a + b; break;
                case "-": result = a - b; break;
                case "*": result = a * b; break;
                case "/": result = b != 0 ? a / b : 0; break;
            }
            out.println("<h3>Result: " + result + "</h3>");
        }
    %>
</body>
</html>
