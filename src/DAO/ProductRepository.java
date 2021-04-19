package DAO;

import java.util.ArrayList;
import java.util.List;

import DTO.Product;

public class ProductRepository {
	private List<Product> listOfProducts;
	{
		listOfProducts = new ArrayList<Product>();
	}
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1234X750 Retina HD display, 8-megapixel isight camera");
		phone.setManufacturer("Apple");
		phone.setCategory("Smart Phone");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("p1235","LG PC 그램", 15000000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Ganeration Intel Core Processor");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("erfurbished");
		
		Product tablet = new Product("P1236","Galaxy Tab5",9000000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-core Processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(10000);
		tablet.setCondition("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
	}
	public ArrayList<Product> getAllProducts(){
		return (ArrayList<Product>)listOfProducts;
	}
}
