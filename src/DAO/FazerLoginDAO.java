package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.Usuario;

public class FazerLoginDAO {

	ConnectionFactory cf = new ConnectionFactory();

	public void excluir(int id) {
		String sqlDelete = "DELETE FROM usuario WHERE id = ?";
		try (Connection conn = cf.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlDelete);) {

			stm.setInt(1, id); /* stm.setInt(1, empresa.getId()); */

			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Usuario carregarLogin(String documento, String senha) {
		Usuario usuario = new Usuario();

		String sqlSelect = "SELECT id,nomeUsuario, emailUsuario, documentoCPF_CNPJ, situacaoCadastral, documentoEmpresa,tipoCadastro,idPerfil, senha FROM usuario WHERE usuario.documentoCPF_CNPJ = ? and senha = ? ";

		try (Connection conn = cf.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setString(1, documento);
			stm.setString(2, senha);
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					usuario.setId(Integer.parseInt(rs.getString("id")));
					usuario.setNomeUsuario(rs.getString("nomeUsuario"));
					usuario.setEmailUsuario(rs.getString("emailUsuario"));
					usuario.setDocumentoCPFCNPJEmpresa(rs.getString("documentoCPF_CNPJ"));
					usuario.setSituacaoCadastral(rs.getString("situacaoCadastral"));
					usuario.setDocumentoEmpresa(rs.getString("documentoEmpresa"));
					usuario.setTipoCadastro(rs.getString("tipoCadastro"));
					usuario.setIdTipoPerfil(Integer.parseInt(rs.getString("idPerfil")));
					usuario.setSenha(rs.getString("senha"));
				} else {
					usuario.setId(-1);
					usuario.setNomeUsuario(null);
					usuario.setEmailUsuario(null);
					usuario.setDocumentoCPFCNPJEmpresa(null);
					usuario.setSituacaoCadastral(null);
					usuario.setDocumentoEmpresa(null);
					usuario.setSenha(null);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return usuario;
	}

}
