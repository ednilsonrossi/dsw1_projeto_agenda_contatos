<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="br.edu.ifsp.dsw1.Contato"%>
<%@ page import="java.util.List"%>
<jsp:useBean id="contatos" class="br.edu.ifsp.dsw1.ContatosBean" scope="application" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contatos</title>
</head>
<body>
	<h1>Lista de Contatos</h1>
	<a href="novo_contato.jsp">Adicionar Contato</a>
	<table border="1">
		<thead>
			<tr>
				<th>Nome</th>
				<th>Telefone</th>
				<th>E-mail</th>
				<th>Ações</th>
			</tr>
		</thead>
		
		<tbody>
		<%for(var contato : contatos.buscaTodos()) { %>
			<tr>
				<td><%= contato.getNome() %></td>
				<td><%= contato.getTelefone() %></td>
				<td><%= contato.getEmail() %></td>
				<td> <a href="apagar_contato.jsp?id=<%= contato.getId() %>"><img alt="Apagar" src="./images/trash.png" width="32"></a> </td>
			</tr>
		<%}%>
		</tbody>
		
	</table>
</body>
</html>