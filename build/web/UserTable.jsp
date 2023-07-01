<%-- 
    Document   : UserTable
    Created on : May 16, 2023, 8:30:25 AM
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
        display: flex;
        justify-content: flex-start;
        flex-wrap: wrap;
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
            <th>Surname</th>
            <th>Middle Name</th>
            <th>Phone Number</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>Role</th>
            <th>Sex</th>
            <th>Password</th>
            <th>User</th>
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
            <td>johndoe@example.com</td>
            <td>Admin</td>
            <td>Male</td>
            <td>password</td>
            <td>johndoe</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>2</td>
            <td>Smith</td>
            <td>Jane</td>
            <td>555-5678</td>
            <td>1995-05-05</td>
            <td>janesmith@example.com</td>
            <td>User</td>
            <td>Female</td>
            <td>password</td>
            <td>janesmith</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>3</td>
            <td>Johnson</td>
            <td>Robert</td>
            <td>555-2468</td>
            <td>1987-12-31</td>
            <td>robertjohnson@example.com</td>
            <td>User</td>
            <td>Male</td>
            <td>password</td>
            <td>robertjohnson</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>4</td>
            <td>Lee</td>
            <td>Lucy</td>
            <td>555-3699</td>
            <td>1998-08-08</td>
            <td>lucylee@example.com</td>
            <td>User</td>
            <td>Female</td>
            <td>password</td>
            <td>lucylee</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>5</td>
            <td>Miller</td>
            <td>William</td>
            <td>555-9876</td>
            <td>1992-04-15</td>
            <td>williammiller@example.com</td>
            <td>User</td>
            <td>Male</td>
            <td>password</td>
            <td>williammiller</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>6</td>
            <td>Wilson</td>
            <td>David</td>
            <td>555-1111</td>
            <td>1998-10-01</td>
            <td>davidwilson@example.com</td>
            <td>User</td>
            <td>Male</td>
            <td>password</td>
            <td>davidwilson</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>7</td>
            <td>Jones</td>
            <td>Emily</td>
            <td>555-2222</td>
            <td>1996-06-06</td>
            <td>emilyjones@example.com</td>
            <td>User</td>
            <td>Female</td>
            <td>password</td>
            <td>emilyjones</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>8</td>
            <td>Taylor</td>
            <td>Michael</td>
            <td>555-3333</td>
            <td>1989-02-14</td>
            <td>michaeltaylor@example.com</td>
            <td>User</td>
            <td>Male</td>
            <td>password</td>
            <td>michaeltaylor</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>9</td>
            <td>Adams</td>
            <td>Grace</td>
            <td>555-4444</td>
            <td>1997-09-09</td>
            <td>graceadams@example.com</td>
            <td>User</td>
            <td>Female</td>
            <td>password</td>
            <td>graceadams</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
          <tr>
            <td>10</td>
            <td>Clark</td>
            <td>Robert</td>
            <td>555-5555</td>
            <td>1993-12-25</td>
            <td>robertclark@example.com</td>
            <td>User</td>
            <td>Male</td>
            <td>password</td>
            <td>robertclark</td>
            <td><button class="edit-button">Edit</button></td>
            <td><button class="delete-button">Delete</button></td>
          </tr>
        </tbody>
      </table>
    </div>
  </body>
</html>