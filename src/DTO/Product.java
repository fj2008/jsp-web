package DTO;	
import java.io.Serializable;

import com.sun.org.apache.xml.internal.serializer.SerializationHandler;
				//pakege명 

				//dto 데이터를 저장하거나 저장된 데이터를 받아오는 클래스
				//dao- dto를 사용해서 데이터 베이스에 데이터를 저장하거나 추가 생성등의 역할을 하는 클래스

public class Product implements Serializable{
	
	private String productId;		//상품아이디
	private String name;			//상품명
	private int unitPrice;			//상품 가격
	private String description;		//상품 설명
	private String manufacturer;	//제조사
	private String category;		//분류
	private long unitsInStock;		//재고 수
	private String condition;		//신상품or중고품or재생품
	
	public Product(String productId, String name, int unitPrice) {
		setProductId(productId);
		setName(name);
		setUnitPrice(unitPrice);
	}
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	public void Product(String productId, String name, String unitPrice,String description, String manufacturer, String category, String unitsInStock, String condition) {
		

		
		this.productId = productId;
		this.name = name;
		this.unitPrice = Integer.parseInt(unitPrice);
		
		this.description = description;
		this.manufacturer = manufacturer;
		this.category = category;
		this.unitsInStock = Integer.parseInt(unitsInStock);
		this.condition = condition;
		
	}
}
