<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.ConnectionMysql, java.sql.*"%>
    
<%	
	ConnectionMysql bd = new ConnectionMysql();
	Connection connection = bd.conectionDB();
	
	String sql = "select * from tblVagas";	
	Statement statement = (Statement) connection.createStatement();	
	ResultSet result = statement.executeQuery(sql); 
 	
%> 
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista Geral de Vagas Encerradas</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integritåy="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header id="header">
        <nav id="nav">
            <ul id="menu" role="menu">
                <li>
                    <a href="index.jsp"> Sistema de controle de Vagas de Emprego</a>
                </li>
                <li>
                    <a href="cadastrar.jsp">Cadastrar </a>
                </li>
                <li>
                    <a href="alterar.jsp">Alteração/exclusão</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link active dropdown-toggle " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Listar Vagas
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="listarAberta.jsp">Lista de vagas abertas</a></li>
                        <li><a class="dropdown-item" href="listaEncerrada.jsp">Lista de vaga encerradas</a></li>
                        <li><a class="dropdown-item" href="listaGeral.jsp">Lista geral de vagas</a></li>
                    </ul>
                </li>
                <li>
                    <a href="index.jsp" class="login">Login <i class="icon uil uil-sign-out-alt"></i></a>
                </li>
            </ul>
        </nav>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </header>

    <div class="conteudo centerObject">
        <i class="icons-list uil uil-clipboard-blank"></i>
        <h1>Lista Geral de Vagas Encerradas</h1>
        <div class="container-infortions">
            <div class="forms">
                <table class="tbl-estrutura centerObject">
                    <tr class="colunas">
                        <td class="info"><strong>ID</strong></td>
                        <td class="info"><strong>Descrição</strong></td>
                        <td class="info"><strong>Requisitos Obrigatórios</strong></td>
                        <td class="info"><strong>Requisitos Desejáveis</strong></td>
                        <td class="info"><strong>Remuneração</strong></td>
                        <td class="info"><strong>Beneficio</strong></td>
                        <td class="info"><strong>Local de Trabalho</strong></td>
                    </tr>

                   <% while(result.next()){
                   %>
                    	<tr class="colunas">
	                        <td class="info-white"><strong><%=result.getLong("idVaga") %></strong></td>
	                        <td class="info-white"><strong><%=result.getString("descricao") %></strong></td>
	                        <td class="info-white"><strong><%=result.getString("requisitosObrigatorios") %></strong></td>
	                        <td class="info-white"><strong><%=result.getString("requisitosDesejaveis") %></strong></td>
	                        <td class="info-white"><strong><%=result.getString("remuneracao") %></strong></td>
	                        <td class="info-white"><strong><%=result.getString("beneficio") %></strong></td>
	                        <td class="info-white"><strong><%=result.getString("localTrabalho") %></strong></td>
                    	</tr>
                   	<%}
	                    result.close();
	                    connection.close();
	                   	statement.close();
                    %>  
                </table>
            </div>
            <a href="index.jsp">
                <button type="submit" name="btnCadastrar" value="Cadastrar" >Voltar</button>
            </a>
        </div>
    </div>
</body>
</html>