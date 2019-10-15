package com.niit.database.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.database.model.Product;

import com.niit.database.service.ProductService;


@Controller
public class ProductController {
	 static Logger log = Logger.getLogger(ProductController.class.getName());
	private ProductService productService;
	
	@Autowired(required=true)
	public void setProductService(ProductService productService){
		this.productService=productService;
	}	
	@RequestMapping("/addproduct")
	public String product(Model mv)
	{
		
		mv.addAttribute("product",new Product());
        mv.addAttribute("productList",productService.listProduct());
		return "addproduct";
		
	}
	
	@RequestMapping("/editprod/{pid}")
	public String editProduct(@PathVariable("pid") int pid, Model mv)
	{
		mv.addAttribute("product",productService.getid(pid));
	    mv.addAttribute("productList",productService.listProduct());
		return "addproduct";
	}
	
	@RequestMapping("/deleteprod/{pid}")
	public String editProductdelete(@PathVariable("pid") int pid, Model mv)
	{
		productService.delete(pid);
		return "redirect:/addproduct";
	}
	
	@RequestMapping(value="/productadd",method=RequestMethod.POST)
	public  String productadd(@ModelAttribute("product") Product p,HttpServletRequest request)
	{
		log.debug("product is going to add");
		System.out.println("product"+p.getPid());
		if(p.getPid()==0){
		productService.addProduct(p);
		MultipartFile img=p.getImage();
		HttpSession ss=request.getSession();
		String serverpath=ss.getServletContext().getRealPath("/resources/images");
		String filename=serverpath+File.separator+p.getPid()+".jpg";
		System.out.println(serverpath);
		System.out.println(filename);
		log.debug(serverpath);
		
		try{
			byte b[]=img.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
		}catch(FileNotFoundException e){}
		catch(IOException e){}
		}
		else
		{
			productService.update(p);
			
		}
		return "redirect:/addproduct";
		
	}
	
	
	
}
