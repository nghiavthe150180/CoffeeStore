<%-- 
    Document   : ProductTable
    Created on : May 16, 2023, 9:24:31 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>User Table</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        font-size: 14px;
        line-height: 1.5;
      }
      .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 20px;
      }
      #user-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        
      }
      #user-table th, #user-table td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
      }
      #user-table th {
        background-color: #f2f2f2;
      }
      #user-table tbody tr:nth-child(even) {
        background-color: #f2f2f2;
      }
      #user-table tbody tr:hover {
        background-color: #ddd;
      }
      #user-table button {
        padding: 6px 12px;
        border-radius: 4px;
        border: none;
        cursor: pointer;
        background-color: #4CAF50;
        color: #fff;
      }
      #user-table button.edit-button {
        background-color: #2196F3;
      }
      #user-table button.delete-button {
        background-color: #f44336;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <button id="new-user">Add New User</button>
      <table id="user-table">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Location</th>
            <th>Revenue</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody id="user-table-body">
          <tr>
            <td>1</td>
            <td>Doe</td>
            <td>John</td>
            <td>555-1234</td>
            <td>1990-01-01</td>
            <td>09012001</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
         
        </tbody>
      </table>
    </div>
  </body>
</html>
