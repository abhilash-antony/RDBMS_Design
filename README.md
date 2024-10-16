# Designing a Pizza Shop RDBMS - Pizza Oven

## Project Overview
This project focuses on the design and implementation of a **Relational Database Management System (RDBMS)** for a fictional pizza shop, **Pizza Oven**. The database system aims to streamline critical operations such as order processing, inventory management, and staff scheduling. It is designed to enhance the operational efficiency of a pizza shop by centralizing data and ensuring data integrity through normalization.

## Objectives
The primary objectives of the database system are:
- **Centralized Data Management**: Store and manage all essential data, including customer information, orders, inventory, and staff details.
- **Enhanced Operational Efficiency**: Streamline order processing and minimize errors through organized data storage.
- **Inventory Control**: Track ingredient usage in real-time to optimize stock levels and reduce waste.
- **Staff Management**: Maintain accurate records of staff schedules and shifts to enhance workforce management.

## Database Design
The database consists of multiple interconnected tables, each tailored to a specific aspect of Pizza Oven’s operations. The tables include:

- **Customers**: Stores customer information.
- **Address**: Holds delivery addresses linked to customer orders.
- **Ingredient**: Tracks ingredients used in menu items.
- **Recipe**: Connects menu items to their recipes and ingredients.
- **Item**: Contains details of the available menu items.
- **Orders**: Manages customer orders, including items ordered and delivery details.
- **Inventory**: Monitors ingredient stock levels.
- **Staff**: Stores staff details and roles.
- **Shift**: Manages staff shift timings.
- **Rotation**: Tracks staff shifts and rotations.

## Key Relationships
The tables in the database are connected through **primary and foreign keys** to ensure data integrity and efficient retrieval. Some key relationships include:
- **Customers and Orders**: Each customer can place multiple orders.
- **Orders and Address**: Links each order to a delivery address.
- **Orders and Item**: Multiple items can be part of a single order.
- **Item and Recipe**: Connects menu items to their recipes.
- **Recipe and Ingredient**: Recipes are linked to the ingredients used.
- **Staff and Rotation**: Manages staff shifts and assignments.

## ERD (Entity-Relationship Diagram)
The ERD provides a visual representation of the entities and relationships within the database. It maps out how different tables such as customers, orders, ingredients, and staff interact within the system.

![ERD Diagram](path_to_your_ERD_image)

## Database Schema
The detailed database schema includes the structure of each table and the relationships between them. The schema design supports the daily operations of Pizza Oven by facilitating accurate tracking of orders, inventory, and staff schedules.

## Conclusion
The **Pizza Oven RDBMS** provides a comprehensive solution for managing the operations of a pizza shop. By implementing a well-structured schema and ensuring robust relationships between tables, the system supports efficient data management and operational efficiency. 

For further details, you can access the **SQL code** and full project implementation in this repository.

---
**Author**: Abhilash Antony  
**GitHub**: [abhilash-antony](https://github.com/abhilash-antony)
**Date**: 16 October 2024
