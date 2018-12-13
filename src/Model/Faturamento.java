package Model;

public class Faturamento {
	
	public int id;
	public String estado;
	public double combustivel;
	public double hotel;
	public double estacionamento;
	public double supermercado;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public double getCombustivel() {
		return combustivel;
	}
	public void setCombustivel(double combustivel) {
		this.combustivel = combustivel;
	}
	public double getHotel() {
		return hotel;
	}
	public void setHotel(double hotel) {
		this.hotel = hotel;
	}
	public double getEstacionamento() {
		return estacionamento;
	}
	public void setEstacionamento(double estacionamento) {
		this.estacionamento = estacionamento;
	}
	
	public double getSupermercado() {
		return supermercado;
	}
	public void setSupermercado(double supermercado) {
		this.supermercado = supermercado;
	}
	
	
	

}
