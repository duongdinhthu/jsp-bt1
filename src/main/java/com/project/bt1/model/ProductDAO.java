package com.project.bt1.model;

import com.project.bt1.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private static List<Product> productList = new ArrayList<>();
    private static int idCounter = 1;

    // Thêm sản phẩm
    public void addProduct(Product product) {
        product.setId(idCounter++);
        productList.add(product);
    }

    // Lấy danh sách sản phẩm
    public List<Product> getAllProducts() {
        return productList;
    }

    // Tìm sản phẩm theo ID
    public Product getProductById(int id) {
        return productList.stream().filter(p -> p.getId() == id).findFirst().orElse(null);
    }

    // Cập nhật sản phẩm
    public void updateProduct(Product updatedProduct) {
        for (Product product : productList) {
            if (product.getId() == updatedProduct.getId()) {
                product.setName(updatedProduct.getName());
                product.setPrice(updatedProduct.getPrice());
                product.setDescription(updatedProduct.getDescription());
                return;
            }
        }
    }

    // Xóa sản phẩm theo ID
    public void deleteProduct(int id) {
        productList.removeIf(product -> product.getId() == id);
    }
}
