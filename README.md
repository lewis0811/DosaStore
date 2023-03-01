# Clothing Store Project

This is a Clothing Store Project built using Java, JSP/Servlet, and JDBC. The project allows users to search and filter clothes by category, view details, place an order, and view their order history. The admin dashboard allows the admin to manage store products.

## Features

### User Features
- Search for clothes
- Filter clothes by category
- View details of a specific product
- Place an order
- View order history

### Admin Features
- Add new products
- Edit existing products
- Delete products
- View list of all products
- View list of all orders

## Technologies Used

- Java
- JSP/Servlet
- JDBC
- MySQL

## Setup

1. Clone the repository: `git clone https://github.com/pytas0811/clothing-store-project.git`
2. Import the project into your IDE
3. Execute sql script in root folder using MSSQL
4. Configure your database connection in the `DbConnection.java` file located in `src/java/context/DBUtils.java`
5. Run the project on a server
6. Access the project in a web browser at `http://localhost:<PORT>/clothingstore`

## Database Schema

The project uses the following database schema:

![Database Schema](/schema.png)

## Contributors

- [pytas0811](https://github.com/pytas0811) (owner)

## License

This project is licensed under the MIT License.
