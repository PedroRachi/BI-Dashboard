package Service;

import DAO.FaturamentoDao;
import Model.Faturamento;

public class FaturamentoService {
	FaturamentoDao dao;
	
	public FaturamentoService() {
		dao = new FaturamentoDao();
	}
	
	public int inserirFaturamento(Faturamento faturamento) {
		return dao.inserirFaturamento(faturamento);
	} 
	
	

}
