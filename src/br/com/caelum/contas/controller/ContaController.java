package br.com.caelum.contas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.contas.dao.ContaDAO;
import br.com.caelum.contas.modelo.Conta;

@Controller
public class ContaController {

	@RequestMapping("/form")
	public String formulario() {
		return "conta/formulario";
	}

	@RequestMapping("/adicionaConta")
	public String adicionaConta(Conta conta) {
		System.out.println("Conta:" + conta.getDescricao() + " adicionada");
		ContaDAO dao = new ContaDAO();
		dao.adiciona(conta);
		return "conta/conta_adicionada";
	}
}
