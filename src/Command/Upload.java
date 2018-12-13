package Command;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Email;
import Model.Faturamento;
import Service.FaturamentoService;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import javax.servlet.http.Part;

public class Upload implements Command {

	private static final String UPLOAD_DIR = "uploads";

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String applicationPath = request.getServletContext().getRealPath("");
		// constrói o caminho do diretório para salvar o arquivo enviado
		String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;

		// cria o diretório de salvamento se ele não existir
		File fileSaveDir = new File(uploadFilePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdirs();
		}

		String fulNamefile = "";
		for (Part part : request.getParts()) {
			if (part.getContentType() != null)
				if (part.getContentType().equals("application/vnd.ms-excel")) {
					fulNamefile = uploadFilePath + File.separator + getFileName(part);
					part.write(uploadFilePath + File.separator + getFileName(part));
				} else {
					request.setAttribute("mensagem", "Somente Arquivos Excel!!!");
					RequestDispatcher rd = request.getRequestDispatcher("/Upload.jsp");
					rd.forward(request, response);
					return;
				}
		}

		Workbook workbook;
		try {
			workbook = Workbook.getWorkbook(new File(fulNamefile));
			Sheet sheet = workbook.getSheet(0);

			for (int idx = 1; idx <= sheet.getRows() - 1; idx++) {
				Cell a1 = sheet.getCell(0, idx);
				Cell a2 = sheet.getCell(1, idx);
				Cell a3 = sheet.getCell(2, idx);
				Cell a4 = sheet.getCell(3, idx);
				Cell a5 = sheet.getCell(4, idx);

				Faturamento faturamento = new Faturamento();

				faturamento.setEstado(a1.getContents());
				faturamento.setCombustivel(Double.parseDouble(a2.getContents()));
				faturamento.setHotel(Double.parseDouble(a3.getContents()));
				faturamento.setEstacionamento(Double.parseDouble(a4.getContents()));
				faturamento.setSupermercado(Double.parseDouble(a5.getContents()));

				FaturamentoService fat = new FaturamentoService();
				fat.inserirFaturamento(faturamento);
			}

		} catch (BiffException e) {

			e.printStackTrace();
		}

		String email = "pedromesquitarachi@gmail.com";

		Email em = new Email();
		em.enviarPadrao(email, "Atualização no Faturamento", "Houve uma Acrescimo no faturamento \n\n");

		request.setAttribute("mensagem", "Verifique seu E-mail");

		RequestDispatcher rd = request.getRequestDispatcher("/Faturamento.jsp");
		rd.forward(request, response);

	}

	private String getFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		System.out.println("content-disposition header= " + contentDisp);
		String[] tokens = contentDisp.split(";");
		for (String token : tokens) {
			if (token.trim().startsWith("filename")) {
				return token.substring(token.indexOf("=") + 2, token.length() - 1);
			}
		}
		return "";
	}
}
