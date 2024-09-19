<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="br.edu.ifsp.dsw1.Contato"%>
<jsp:useBean id="contatos" class="br.edu.ifsp.dsw1.ContatosBean" scope="application" />


<%
String strNome = request.getParameter("text_nome");
String strEmail = request.getParameter("text_email");
String strFone = request.getParameter("text_telefone");
boolean inserido = false;

if (strNome != null){
	/* Formulário foi submetido. */
	Contato contato = new Contato(strNome, strFone, strEmail);
	contatos.insere(contato);
	inserido = true;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo Contato</title>
</head>
<body>
	<%if(!inserido){ %>
	<form action="novo_contato.jsp" method="POST">
        <!-- Campo Nome -->
        <label for="nome">Nome:</label><br>
        <input type="text" id="nome" name="text_nome" placeholder="Digite seu nome" required><br><br>

        <!-- Campo E-mail -->
        <label for="email">E-mail:</label><br>
        <input type="email" id="email" name="text_email" placeholder="Digite seu e-mail" required><br><br>

        <!-- Campo Telefone -->
        <label for="telefone">Telefone:</label><br>
        <input type="tel" id="telefone" name="text_telefone" placeholder="(xx) xxxxx-xxxx" pattern="\(\d{2}\) \d{5}-\d{4}" required><br><br>

        <!-- Botão de Envio -->
        <button type="submit">Enviar</button>
    </form>
    <%} else { %>
    	<h1>Contato inserido com sucesso.</h1>
    	<a href="index.jsp">Voltar</a>
    <%} %>
</body>
</html>