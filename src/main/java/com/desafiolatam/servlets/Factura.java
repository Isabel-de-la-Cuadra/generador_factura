package com.desafiolatam.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.desafiolatam.models.Producto;

@WebServlet("/factura")
public class Factura extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// capturando parámetros
		String nombre = request.getParameter("nombre");
		String empresa = request.getParameter("empresa");
		String rut = request.getParameter("rut");
		String direccion = request.getParameter("direccion");
		String ciudad = request.getParameter("ciudad");
		String pais = request.getParameter("pais");

		// capturar la cantidad ingresada de cada producto
		Integer item01 = Integer.parseInt(request.getParameter("valvula"));
		Integer item02 = Integer.parseInt(request.getParameter("turbo"));
		Integer item03 = Integer.parseInt(request.getParameter("kit"));
		Integer item04 = Integer.parseInt(request.getParameter("sistema"));
		Integer item05 = Integer.parseInt(request.getParameter("plumilla"));
		
		//Capturar valor unitario de cada producto
		Integer vu01 = Integer.parseInt(request.getParameter("valvulaVU"));
		Integer vu02 = Integer.parseInt(request.getParameter("turboVU"));
		Integer vu03 = Integer.parseInt(request.getParameter("kitVU"));
		Integer vu04 = Integer.parseInt(request.getParameter("sistemaVU"));
		Integer vu05 = Integer.parseInt(request.getParameter("plumillaVU"));

		// Validar

		if (nombre.equals("") || empresa.equals("") || rut.equals("") || direccion.equals("") || ciudad.equals("")
				|| pais.equals("") || nombre == null || empresa == null || rut == null || direccion == null
				|| ciudad == null || pais == null) {
			String msgError = "Te faltó ingresar parte de los datos del cliente, por favor verifícalos";

			request.setAttribute("msgError", msgError);
			request.getRequestDispatcher("/formularioIngreso").forward(request, response);
		} else {
			
			Integer valorNeto = 0;
			Double descuento = 0.0;
			Integer valorTotal = 0;
			Integer valvulaVT = 0;
			Integer turboVT = 0;
			Integer kitVT = 0;
			Integer sistemaVT = 0;
			Integer plumillaVT = 0;
			
			//inicializar una lista de productos
			
			ArrayList<Producto> listaProductos = new ArrayList<Producto>();
			
			if (item01 > 0) {
				valvulaVT = vu01 * item01;
				Producto producto01 = new Producto("Valvulas de titanio", "Valvulas de carrera", 120000, item01, valvulaVT);
				listaProductos.add(producto01);
			}
			if (item02 > 0) {
				turboVT = vu02 * item02;
				Producto producto02 = new Producto("Turbo Full Carrera", "Turbo de competición multimarca", 1700000, item02, turboVT);
				listaProductos.add(producto02);
				
			}
			if (item03 > 0) {
				kitVT = vu03 * item03;
				Producto producto03 = new Producto("Kit de Freno Competición", "Juego de discos, balatas, caliper de competición", 760000, item03, kitVT);
				listaProductos.add(producto03);
			}
			if (item04 > 0) {
				sistemaVT = vu04 * item04;
				Producto producto04 = new Producto("Sistema de Refrigeración", "Sistema de enfriamiento de motor Carrera", 2300000, item04, sistemaVT);
				listaProductos.add(producto04);
			}
			if (item05 > 0) {
				plumillaVT = vu05 * item05;
				Producto producto05 = new Producto("Plumillas limpiaparabrisas standar", "Plumillas para la lluvia", 10000, item05, plumillaVT);
				listaProductos.add(producto05);
				
			}

			valorNeto = valvulaVT + turboVT + kitVT + sistemaVT + plumillaVT;
			
			if (valorNeto > 0) {
				descuento = valorNeto * 0.1;
				valorTotal = (int) (valorNeto - descuento);
			}
			//clave valor, pasando valores desde el Servlet al .jsp
			request.setAttribute("nombre", nombre);
			request.setAttribute("empresa", empresa);
			request.setAttribute("rut", rut);
			request.setAttribute("direccion", direccion);
			request.setAttribute("ciudad", ciudad);
			request.setAttribute("pais", pais);
			
			request.setAttribute("listaProductos", listaProductos);
			
			request.setAttribute("valorNeto", valorNeto);
			request.setAttribute("valorTotal", valorTotal);
			
			request.getRequestDispatcher("factura.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
