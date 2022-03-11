<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar</title>
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
        <i class="icons-list uil uil-chart-line"></i>
        <h1>Sistema de Controle  de Inclusão - Vagas de Emprego</h1>
        <div class="container-infortions">
                
                <form action="controller/inserirVaga.jsp" method="post">
                        
                    <div class="campo centerObject">
                        <div class="cadastroInformacoes">
                            <p> <strong>Descrição:</strong></p>
                        </div>
                        <div class="cadastroEntradaDeDados">
                            <i class="icon-grip uil uil-grip-horizontal-line"></i>
                            <input type="text" name="txtDescricao" required>
                        </div>
                    </div>

                    <div class="campo centerObject">
                        <div class="cadastroInformacoes">
                            <p> <strong>Requisitos Obrigatorios: </strong></p>
                        </div>
                        <div class="cadastroEntradaDeDados">
                            <i class="icon-grip uil uil-grip-horizontal-line"></i>
                            <input type="text" name="txtRequisitosObrigatorios" value="" required>
                        </div>
                    </div>

                    <div class="campo centerObject">
                        <div class="cadastroInformacoes">
                            <p> <strong>Requisitos Desejaveis: </strong></p>
                        </div>
                        <div class="cadastroEntradaDeDados">
                            <i class="icon-grip uil uil-grip-horizontal-line"></i>
                            <input type="text" name="txtRequisitosDesejaveis" value="" required>
                        </div>
                    </div>

                    <div class="campo centerObject">
                        <div class="cadastroInformacoes">
                            <p> <strong>Remuniração: </strong></p>
                        </div>
                        <div class="cadastroEntradaDeDados">
                            <i class="icon-grip uil uil-grip-horizontal-line"></i>
                            <input type="text" name="txtRemuneracao" value="" required>
                        </div>
                    </div>

                    <div class="campo centerObject">
                        <div class="cadastroInformacoes">
                            <p> <strong>Beneficios: </strong></p>
                        </div>
                        <div class="cadastroEntradaDeDados">
                            <i class="icon-grip uil uil-grip-horizontal-line"></i>
                            <input type="text" name="txtBeneficios" value="" required>
                        </div>
                    </div>

                    <div class="campo centerObject">
                        <div class="cadastroInformacoes">
                            <p> <strong>Local de Trabalho: </strong></p>
                        </div>
                        <div class="cadastroEntradaDeDados">
                            <i class="icon-grip uil uil-grip-horizontal-line"></i>
                            <input type="text" name="txtLocalTrabalho" value="" required>
                        </div>
                    </div>
                    
                	<button type="submit" name="btnCadastrar" value="Cadastrar" >Enviar</button> 			

                </form>      
            
        </div>
    </div>

</body>
</html>