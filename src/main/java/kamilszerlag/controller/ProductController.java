package kamilszerlag.controller;

import kamilszerlag.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService productService;

   @GetMapping("/list")
    public String listProduct(Model model){
       model.addAttribute("productList",productService.getProductList());



       return "list-product";
   }





}
