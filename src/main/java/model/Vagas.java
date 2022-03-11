package model;

import java.sql.*;

public class Vagas  {
	
	private Long id;
	private String descricao;
	private String requisitosObrigatorios;
	private String requisitosDesejaveis;
	private String remuneracao;
	private String beneficio;
	private String localTrabalho;
	
	ConnectionMysql bd = new ConnectionMysql();
	
	public boolean inserirVaga() throws ClassNotFoundException, SQLException {
		
		try{
			Connection connection = bd.conectionDB();
			
			String sql = "insert into tblVagas(descricao, requisitosObrigatorios, requisitosDesejaveis, beneficio, remuneracao, localTrabalho)"
					+ "values(?,?,?,?,?,?)";
			
			// Instancia para tratar o objeto Statement para tratar os valores
			PreparedStatement statement = (PreparedStatement) connection.prepareStatement(sql);
			
			//Agrega os valores dos atributos da classe a serem colocados no script SQL
			statement.setString(1, this.descricao);
			statement.setString(2, this.requisitosObrigatorios);
			statement.setString(3, this.requisitosDesejaveis);
			statement.setString(4, this.remuneracao);
			statement.setString(5, this.beneficio);
			statement.setString(6, this.localTrabalho);
			
			//Executa no BD o script sql
			statement.execute();
			closeConnection(statement, connection);
			
			return true;
			
		}catch(Exception e){
			return false;
		}
		
		
	}
	
	public boolean editarVaga(Long id) {
		
		try{
			Connection connection = bd.conectionDB();	
		
			String sql = "update tblVagas set descricao = ?, requisitosObrigatorios = ?, requisitosDesejaveis = ?, beneficio = ?, remuneracao = ?, localTrabalho = ?"
					+ " where idVaga = ?";
			PreparedStatement statement = (PreparedStatement) connection.prepareStatement(sql);
			
			statement.setString(1, this.descricao);
			statement.setString(2, this.requisitosObrigatorios);
			statement.setString(3, this.requisitosDesejaveis);
			statement.setString(4, this.remuneracao);
			statement.setString(5, this.beneficio);
			statement.setString(6, this.localTrabalho);
			statement.setLong(7, id);
			 
			statement.execute();
			closeConnection(statement, connection);
			
			return true;				
			
		}catch(Exception e){
			return false;
			
		}		
	}

	public boolean excluirVaga(Long id) {
	
		try{
			Connection connection = bd.conectionDB();	
			String sql = "delete from tblVagas where idVaga = ?";
			PreparedStatement statement = (PreparedStatement) connection.prepareStatement(sql);
			
			statement.setLong(1, id);
			 
			statement.execute();
			closeConnection(statement, connection);		
			return true;				
			
		}catch(Exception e){
			return false;
			
		}
	}
	
	public Vagas listarVagaPorId(String id) {
		try{
			Vagas vagas = new Vagas();		
			Connection connection = bd.conectionDB();
			
			String sql = "select * from tblVagas where idVaga = ?";	
			PreparedStatement statement = (PreparedStatement) connection.prepareStatement(sql);	
			statement.setString(1, id);
			
			ResultSet result = statement.executeQuery();
			 
			 if(result.next()) {
				 vagas.setId(result.getLong("idVaga"));
				 vagas.setDescricao(result.getString("descricao"));
				 vagas.setRequisitosObrigatorios(result.getString("requisitosObrigatorios"));
				 vagas.setRequisitosDesejaveis(result.getString("requisitosDesejaveis"));
				 vagas.setRemuneracao(result.getString("remuneracao"));
				 vagas.setBeneficio(result.getString("beneficio"));
				 vagas.setLocalTrabalho(result.getString("localTrabalho"));
				 return vagas;
				 
			 }else {
				 return null;
			 }
			 	
		}catch(Exception e){
			 return null;
		}
	}
	
	public void closeConnection(Statement statement, Connection connection) {			
		try {
			statement.close();
			connection.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
	
	public Long getId() {
		return id;
	}
	
	public Long setId(Long id) {
		return this.id = id;
	}
	
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public String getRequisitosObrigatorios() {
		return requisitosObrigatorios;
	} 
	
	public void setRequisitosObrigatorios(String requisitosObrigatorios) {
		this.requisitosObrigatorios = requisitosObrigatorios;
	}
	
	public String getRequisitosDesejaveis() {
		return requisitosDesejaveis;
	}
	
	public void setRequisitosDesejaveis(String requisitosDesejaveis) {
		this.requisitosDesejaveis = requisitosDesejaveis;
	}
	
	public String getRemuneracao() {
		return remuneracao;
	}
	
	public void setRemuneracao(String remuneracao) {
		this.remuneracao = remuneracao;
	}
	
	public String getBeneficio() {
		return beneficio;
	}
	
	public void setBeneficio(String beneficio) {
		this.beneficio = beneficio;
	}
	
	public String getLocalTrabalho() {
		return localTrabalho;
	}
	
	public void setLocalTrabalho(String localTrabalho) {
		this.localTrabalho = localTrabalho;
	}

}





