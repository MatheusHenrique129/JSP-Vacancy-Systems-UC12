<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String varDescricao;
	String varRequisitosObrigatorios;
	String varRequisitosDesejaveis;
	String varRemuneracao;
	String varBeneficio;
	String varLocalTrabalho;
	String msg;
	String icon;
	
	// pegando o conteudo da caixa de texto e salvando na variavel
	varDescricao = request.getParameter("txtDescricao");
	varRequisitosObrigatorios = request.getParameter("txtRequisitosObrigatorios");
	varRequisitosDesejaveis = request.getParameter("txtRequisitosDesejaveis");
	varRemuneracao = request.getParameter("txtRemuneracao");
	varBeneficio = request.getParameter("txtBeneficios");
	varLocalTrabalho = request.getParameter("txtLocalTrabalho");
	
	Vagas novaVaga = new Vagas();
	
	novaVaga.setDescricao(varDescricao);
	novaVaga.setRequisitosObrigatorios(varRequisitosObrigatorios);
	novaVaga.setRequisitosDesejaveis(varRequisitosDesejaveis);
	novaVaga.setRemuneracao(varRemuneracao);
	novaVaga.setBeneficio(varBeneficio);
	novaVaga.setLocalTrabalho(varLocalTrabalho);
	
	if(novaVaga.inserirVaga())
		msg = "Registro inserido com sucesso!";
	else
		msg = "Não foi possivel inserir os dados no banco de dados!";

	  
	   
	    
	    if(msg == "Registro inserido com sucesso!")
	    	icon = "icons-list uil uil-check-circle";
	    else
	    	icon = "icons-list uil uil-exclamation-octagon";
	    
	    
	    

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>