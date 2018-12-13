package Command;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Service.FazerLoginService;
import Model.Usuario;

public class FazerLogin implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome = request.getParameter("username");
		String senha = request.getParameter("password");

		Usuario usuario = new Usuario();

		FazerLoginService service = new FazerLoginService();

		usuario = service.carregarLogin(nome, senha);

		if (usuario.getId() > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("logado", usuario);
			switch (usuario.getIdTipoPerfil()) {
			case 1:
			case 2:
			
				break;
			case 4:

				
				RequestDispatcher rd = request.getRequestDispatcher("/IndexAdm.jsp");
				rd.forward(request, response);

				break;

			default:
				System.out.println("Tipo perfil não identificado " + usuario.getId());
				throw new ServletException("Tipo perfil não identificado" + usuario.getId());
			}
		} else {
			request.setAttribute("mensagem", "Tente novamente, não encontrei seus dados !!");
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}

	}

}
