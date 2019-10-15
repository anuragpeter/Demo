package com.niit.database.controller;



import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;
import com.niit.database.service.CategoryService;


@Controller
public class CategoryController {
	private CategoryService categoryService;
	
		
@Autowired(required=true)

public void setCategoryService(CategoryService categoryService) {
	this.categoryService = categoryService;
}
	
	
		@RequestMapping("/category")
		public String addcategory(Model MV)
		{
			ModelAndView mv=new ModelAndView("category");
			mv.addObject("category",new Category());
			
			
			
	        mv.addObject("categoryList",categoryService.listCategory());
			return "addcategory";
			
			
		}
		

		


		@RequestMapping(value="/categoryadd",method=RequestMethod.POST)
		public  ModelAndView categoryAdd(@ModelAttribute("category") Category c,HttpServletRequest request)
		{
			
			
			System.out.println("category");
			ModelAndView mv=new ModelAndView("category");
			
			return mv;	
		}


		@RequestMapping("/editcrod/{cid}")
		public String editCategory(@PathVariable("cid") int cid, Model mv)
		{
			mv.addAttribute("category",categoryService.getid(cid));
		    
			return "addcategory";
		}
		
		@RequestMapping("/deleteprod/{cid}")
		public String editCategorydelete(@PathVariable("cid") int cid, Model mv)
		{
			categoryService.delete(cid);
			return "redirect:/addcategory";
		}	
		
		
		
	}
	


