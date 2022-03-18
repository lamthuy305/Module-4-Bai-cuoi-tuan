<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    table {
        border: 1px solid #000;
    }

    th, td {
        border: 1px dotted #555;
    }
</style>
<div><a href="/products/create">Create Product</a></div>

There are ${products.size()} products in list.
<table>
    <caption>Customers List</caption>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Image</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.id}</td>
            <td><a href="/products/${product.id}">${product.name}</a></td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.image}</td>
            <td><a href="/products/delete/${product.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>