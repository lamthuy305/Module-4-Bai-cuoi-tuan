<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="/products/create" method="post">
    <fieldset>
        <legend>Create Product</legend>
        <table>
            <tr>
                <td>Id</td>
                <td>
                    <input type="text" name="id" value="" placeholder="Nhập id">
                </td>
            </tr>
            <tr>
                <td>Name</td>
                <td>
                    <input type="text" name="name" value="" placeholder="Nhập tên">
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <input type="text" name="price" value="" placeholder="Nhập giá">
                </td>
            </tr>
            <tr>
                <td>Description</td>
                <td>
                    <input type="text" name="description" value="" placeholder="Nhập mô tả">
                </td>
            </tr>
            <tr>
                <td>Image</td>
                <td>
                    <input type="text" name="image" value="" placeholder="Nhập link ảnh">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Tạo mới">
                </td>
            </tr>
        </table>
    </fieldset>
</form>
<a href="/products">Back to list</a>.