package Service;
import DAO.FazerLoginDAO;
import Model.Usuario;

public class FazerLoginService {
	FazerLoginDAO dao;

	public FazerLoginService() {
		dao = new FazerLoginDAO();
	}

	public void excluir(int id) {
		dao.excluir(id);
	}

	public Usuario carregarLogin(String documento,String senha) {
		return dao.carregarLogin(documento,senha);
	}
		
}
