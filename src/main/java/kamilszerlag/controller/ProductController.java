package kamilszerlag.controller;

import kamilszerlag.entity.Product;
import kamilszerlag.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService productService;

    @GetMapping("/list")
    public String listProduct(Model model) {
        model.addAttribute("productList", productService.getProductList());
        return "list-product";
    }

    @GetMapping("/showAddProduct")
    public String showAddProduct(Model model){
        Product product = new Product();
        model.addAttribute("product",product);
    return "add-product";
    }

    @PostMapping("/addProduct")
    public String addProduct(@ModelAttribute("product") Product product ){
        productService.saveProduct(product);
        return "redirect:/product/list";
    }


}
