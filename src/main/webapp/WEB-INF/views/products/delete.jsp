<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="/products/delete/${product.id}" method="post">
    <fieldset>
        <legend>Product Information</legend>
        <input type="hidden" name="id" value="${product.id}">
        <table>
            <tr>
                <td>Id</td>
                <td>
                    ${product.id}
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td>
                    <input type="text" name="name" value="${product.name}">
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <input type="text" name="price" value="${product.price}">
                </td>
            </tr>
            <tr>
                <td>Description</td>
                <td>
                    <input type="text" name="description" value="${product.description}">
                </td>
            </tr>
            <tr>
                <td>Image</td>
                <td>
                    <input type="text" name="image" value="${product.image}">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Xóa">
                </td>
            </tr>
        </table>
    </fieldset>
</form>
<a href="/products">Back to list</a>.