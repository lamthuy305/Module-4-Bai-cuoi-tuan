package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private IProductService productService;

    @GetMapping("/products")
    public ModelAndView showList() {
        ModelAndView modelAndView = new ModelAndView("products/list");
        List<Product> products = productService.findAll();
        modelAndView.addObject("products", products);
        return modelAndView;
    }


    @GetMapping("/products/{id}")
    public ModelAndView showInformation(@PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("products/info");
        Product product = productService.findOne(id);
        modelAndView.addObject("product", product);
        return modelAndView;
    }

    @GetMapping("/products/delete/{id}")
    public ModelAndView showDeleteForm(@PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("products/delete");
        Product product = productService.findOne(id);
        modelAndView.addObject("product", product);
        return modelAndView;
    }

    @GetMapping("/products/create")
    public ModelAndView showCreateForm() {
        ModelAndView modelAndView = new ModelAndView("products/create");
        return modelAndView;
    }


    @PostMapping("/products/{id}")
    public String updateProduct(Product product) {
        productService.update(product.getId(), product);
        return "redirect:/products";
    }

    @PostMapping("/products/delete/{id}")
    public String deleteProduct(Product product) {
        productService.delete(product.getId());
        return "redirect:/products";
    }


    @PostMapping("/products/create")
    public String createProduct(Product product) {
        productService.create(product);
        return "redirect:/products";
    }


}
