	package ua.project.chorniy.model;
	
	import java.util.List;
	
	import javax.persistence.CascadeType;
	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.Id;
	import javax.persistence.JoinColumn;
	import javax.persistence.JoinTable;
	import javax.persistence.ManyToMany;
	import javax.persistence.Table;
	
	@Entity
	@Table(name="orders")
	public class Order {
	
	@Id
	@GeneratedValue
	@Column(name="idOrder")
	private int idOrder;
	
	@Column(name="addressOfDelievery")
	private String addressOfDelievery;
	
	@Column(name="customerLogin")
	private String customer;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name="Order_Product", joinColumns={@JoinColumn(name="idOrder")},
	inverseJoinColumns={@JoinColumn(name="idProduct")})
	private List<Product> oderedProducts;
	
	
	public Order() {
	
	}
	
	public int getIdOrder() {
	return idOrder;
	}
	
	public void setIdOrder(int idOrder) {
	this.idOrder = idOrder;
	}
	
	
	
	public String getAddressOfDelievery() {
	return addressOfDelievery;
	}
	
	public void setAddressOfDelievery(String addressOfDelievery) {
	this.addressOfDelievery = addressOfDelievery;
	}
	
	public String getCustomer() {
	return customer;
	}
	
	public void setCustomer(String customer) {
	this.customer = customer;
	}
	
	public List<Product> getOderedProducts() {
	return oderedProducts;
	}
	
	public void setOderedProducts(List<Product> products) {
	this.oderedProducts = products;
	}
}
