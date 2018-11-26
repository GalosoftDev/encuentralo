package com.galosoft.encuentralo.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.galosoft.encuentralo.dao.ProductDao;
import com.galosoft.encuentralo.entities.Product;

@Controller
public class TestController {
	
	@Autowired
	private ProductDao productDao;
	
	private Path path;
	
	@RequestMapping("/")
	public String test() {
		return "index";
	}
	
	@RequestMapping("/productList")
	public String getProducts(Model model) {
		List<Product> products = productDao.findAll();
		model.addAttribute("products", products);
		return "productList";
	}
	
	@RequestMapping("/productList/viewProduct/{productId}")
	public String viewProduct(@PathVariable int productId, Model model) throws IOException {
		Product product = productDao.getOne(productId);
		model.addAttribute(product);
		return "viewProduct";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/admin/productInventory")
	public String productInventory(Model model) {
		List<Product> products = productDao.findAll();
		model.addAttribute("products", products);
		return "productInventory";
	}
	
	@RequestMapping("/admin/productInventory/addProduct")
	public String addProduct(Model model) {
		Product product = new Product();
		product.setProductCategory("watches");
		product.setProductCondition("new");
		product.setProductStatus("new");
		
		model.addAttribute("product", product);
		return "addProduct";
	}
	
	@RequestMapping(value="/admin/productInventory/addProduct", method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product,BindingResult errors, HttpServletRequest request,Model model) {
		
		if(errors.hasErrors()) {
			model.addAttribute("msgName", "Please fill field name");
			return "addProduct";
         } 
		
		productDao.save(product);
		
		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		
		path = Paths.get(rootDirectory + "//imgs//" + product.getProductId()+ ".png");
		
		
		System.out.println(path);
		
		if(productImage != null && !productImage.isEmpty()) {
			try {
				productImage.transferTo(new File(path.toString()));
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("product saving failed...", e);
			}
		}
		
		return "redirect:/admin/productInventory";
	}
	
	@RequestMapping("/admin/productInventory/deleteProduct/{productId}")           
	public String deleteProduct(@PathVariable int productId, Model model) {
		productDao.delete(productDao.getOne(productId));
		return "redirect:/admin/productInventory";
		
	}
	
	
	@RequestMapping("/admin/productInventory/editProduct/{productId}")
	public String editProduct(@PathVariable int productId, Model model) {
		Product product = productDao.getOne(productId);
		model.addAttribute(product);
		return "editProduct";
	}
	
	@RequestMapping(value="/admin/productInventory/editProduct", method = RequestMethod.POST)
	public String editProduct(@ModelAttribute("product")Product product, Model model, HttpServletRequest request) {
		
		
		
		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "//imgs//" + product.getProductId()+ ".png");
		
		if(productImage != null && !productImage.isEmpty()) {
			try {
				productImage.transferTo(new File(path.toString()));
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("product saving failed...", e);
			}
		}
		
		productDao.save(product);
		
		return "redirect:/admin/productInventory";
		
}
	

}








