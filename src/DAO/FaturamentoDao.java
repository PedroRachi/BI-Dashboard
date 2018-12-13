package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class FaturamentoDao {

	ConnectionFactory cf = new ConnectionFactory();

	Model.Faturamento faturamento;

	public int inserirFaturamento(Model.Faturamento faturamento) {

		String sqlInsert = "INSERT INTO faturamento(estado, combustivel, hotel, estacionamento, supermercado) VALUES(?,?,?,?,?)";

		try (Connection conn = cf.obtemConexao(); PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, faturamento.getEstado());
			stm.setDouble(2, faturamento.getCombustivel());
			stm.setDouble(3, faturamento.getHotel());
			stm.setDouble(4, faturamento.getEstacionamento());
			stm.setDouble(5, faturamento.getSupermercado());
			stm.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return faturamento.getId();
	}
}
