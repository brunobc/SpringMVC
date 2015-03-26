<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
    <h3>Adicionar Contas</h3>
    <form action="adicionaConta" method="post">
    	<form:errors path="conta.descricao" />
        Descrição: <br/>
        <textarea name="descricao" rows="5" cols="100"></textarea>
        <br/>
        Valor: <input type="text" name="valor" />
        <br/>
        Tipo: <br/>
        <select name="tipo">
            <option value="ENTRADA">Entrada</option>
            <option value="SAIDA">Saída</option>
        </select>
        <br/><br/>
        <input type="submit" value="Adicionar"/>
    </form>
</body>
</html>