package webservice_layer;

public class Item {
	private int Id;
	private Product product;
	private String qantity;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getQantity() {
		return qantity;
	}
	public void setQantity(String qantity) {
		this.qantity = qantity;
	}
	
}
