package com.desafiolatam.models;

public class Producto {

	private String producto;
	private String descripcion;
	private Integer valorUnitario;
	private String item;
	private Integer cantidad;
	private Integer valorTotal;
	
	public Producto() {
		super();
	}
	
	public Producto(String producto, String descripcion, Integer valorUnitario, Integer cantidad, Integer valorTotal) {
		super();
		this.producto = producto;
		this.descripcion = descripcion;
		this.valorUnitario = valorUnitario;
		this.cantidad = cantidad;
		this.valorTotal = valorTotal;
	}

	public Producto(String producto, String descripcion, Integer valorUnitario, String item) {
		super();
		this.producto = producto;
		this.descripcion = descripcion;
		this.valorUnitario = valorUnitario;
		this.item = item;
	}

	public String getProducto() {
		return producto;
	}

	public void setProducto(String producto) {
		this.producto = producto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Integer getValorUnitario() {
		return valorUnitario;
	}

	public void setValorUnitario(Integer valorUnitario) {
		this.valorUnitario = valorUnitario;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public Integer getCantidad() {
		return cantidad;
	}

	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}

	public Integer getValorTotal() {
		return valorTotal;
	}

	public void setValorTotal(Integer valorTotal) {
		this.valorTotal = valorTotal;
	}

	
}
