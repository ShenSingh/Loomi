# Loomi - Men's Fashion E-commerce Website

Welcome to **Loomi**, a men's fashion e-commerce website designed and developed to provide an intuitive shopping experience. This project is built using **Jakarta EE**, **Tomcat Servlets**, **JSP**, and **MySQL**. 

## Table of Contents

- [About the Project](#about-the-project)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Installation](#installation)
- [Usage](#usage)
- [Database Structure](#database-structure)
- [Contributing](#contributing)
- [License](#license)
- [Video Walkthrough](#video-walkthrough)

## About the Project

**Loomi** is an e-commerce platform specifically tailored for men's fashion. The website showcases a range of products, allows users to browse categories, view product details, and make purchases. 

The project demonstrates skills in backend development with Jakarta EE and frontend development with JSP, creating a complete dynamic web application.

## Features

- User-friendly interface for browsing men's fashion products
- Dynamic product pages and categories
- Shopping cart functionality
- Secure checkout system
- Admin panel for managing products and orders

## Tech Stack

### Backend:
- Jakarta EE
- Tomcat Servlets
- Hibernate ORM

### Frontend:
- JSP (JavaServer Pages)
- HTML5
- CSS3
- JavaScript

### Database:
- MySQL

## Installation

Follow these steps to set up the project on your local machine:

1. **Clone the Repository**

   ```bash
   git clone https://github.com/ShenSingh/Loomi.git
   cd Loomi
   ```

2. **Set Up MySQL Database**

   - Create a new database in MySQL.
   - Import the provided SQL file (`database.sql`) located in the `resources` folder.

   ```sql
   CREATE DATABASE loomi_db;
   USE loomi_db;
   SOURCE resources/database.sql;
   ```

3. **Configure the Project**

   - Update the database connection details in the `persistence.xml` file located in the `src/main/resources/META-INF` folder:

     ```xml
     <property name="hibernate.connection.url" value="jdbc:mysql://localhost:3306/loomi_db" />
     <property name="hibernate.connection.username" value="root" />
     <property name="hibernate.connection.password" value="YOUR_PASSWORD" />
     ```

4. **Build and Deploy**

   - Open the project in your preferred IDE (e.g., IntelliJ IDEA, Eclipse).
   - Build the project and deploy it to a Tomcat server.

5. **Run the Application**

   - Start the Tomcat server.
   - Access the application at `http://localhost:8080/Loomi`.

## Usage

- **User View:**
  - Browse products and categories.
  - Add products to the cart.
  - Proceed to checkout and place orders.

- **Admin Panel:**
  - Log in as an admin to manage products, orders, and users.

## Database Structure

### Tables:

- `users` - Stores user credentials and details.
- `products` - Stores product information (e.g., name, price, description).
- `categories` - Stores product categories.
- `orders` - Tracks user orders and status.
- `order_items` - Stores details of products in each order.

Refer to the `resources/database.sql` file for the full schema.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Video Walkthrough

Check out the video demonstration of the project on YouTube: [Loomi Video Walkthrough](https://youtu.be/pA-j3I4FYso)
