<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
    <head>
        <title>Title</title>
    </head>
    <body>

        <c:if test="${not empty empresa}">
            Empresa ${ empresa } cadastrada com sucesso!
        </c:if>

        Lista de empresas: <br />

        <ul>
            <c:forEach items="${empresas}" var="empresa">

                <li>
                    ${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
                        <a href="/gerenciador_war_exploded/mostraEmpresa?id=${empresa.id}">editar</a>
                        <a href="/gerenciador_war_exploded/removeEmpresa?id=${empresa.id}">remove</a>
                </li>
            </c:forEach>
        </ul>
    </body>
</html>
