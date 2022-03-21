package com.desafiolatam.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*
 * 2. Se pide un servlet de nombre ProcesaLogin.java, cuya función será validar la existencia
de un usuario y password.
 */


@WebServlet("/procesaLogin")
public class ProcesaLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Creación de usuario y contraseña tipo
		String admin = "admin";
		String contrasena = "admin";
		
		//captura de valores ingresados por el usuario
		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		
		System.out.println("Usuario en ProcesaLogin.java" + usuario);
		System.out.println("Password en ProcesaLogin.java" + password);
		
		/*
		 * 4. El servlet debe mostrar una alerta en caso de ingresar valores incorrectos, y redirigir
nuevamente al formulario de login.
		 */
		
		//validar los parámetros
		if(usuario.isEmpty() || usuario == null || password.isEmpty() || password == null) {
			request.setAttribute("msgError","Datos faltantes, por favor verifica");
			request.getRequestDispatcher("/").forward(request, response);
			
		}else {
			
			/*
			 * 3. El servlet debe ser capaz de crear una variable de sesión asignado como nombre el
nombre de usuario recibido desde el formulario de login.
			 */
						
			if(usuario.equals(admin) && password.equals(contrasena)){
				HttpSession session = request.getSession(true);
				session.setAttribute("Nombre", usuario);
				//session.setAttribute("ROL", "administrativo"); se pueden crear roles
				
				request.getRequestDispatcher("/calculadora").forward(request, response);
				
			}else {
				request.setAttribute("msgError","La información ingresada no es correcta, por favor verifícala");
				request.getRequestDispatcher("/").forward(request, response);
			}
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
