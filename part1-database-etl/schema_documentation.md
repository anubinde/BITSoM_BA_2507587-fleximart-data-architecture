**Task 1.2: Database Schema Documentation**



**1.Entity-Relationship Description**





**ENTITY: customers**



Purpose: Stores personal and contact details of customers registered on FlexiMart.



Attributes:



customer\_id: Unique identifier for each customer (Primary Key)

first\_name: Customer’s first name

last\_name: Customer’s last name

email: Unique email address for communication and login

phone: Contact phone number

city: City of residence

registration\_date: Date the customer registered



Relationships:



One customer can place many orders

(1 : M relationship with orders table)



**ENTITY: products**



Purpose: Stores information about products available for sale.



Attributes:



product\_id: Unique product identifier (Primary Key)

product\_name: Name of the product

category: Product category (e.g., Electronics, Clothing)

price: Selling price of the product

stock\_quantity: Available inventory quantity



Relationships:



One product can appear in many order items

(1 : M relationship with order\_items table)



**ENTITY: orders**



Purpose: Stores order-level details for customer purchases.



Attributes:



order\_id: Unique order identifier (Primary Key)

customer\_id: References the customer placing the order (Foreign Key)

order\_date: Date the order was placed

total\_amount: Total monetary value of the order

status: Current order status (Pending, Shipped, Completed)



Relationships:



One order belongs to one customer

One order contains many order items



**ENTITY: order\_items**



Purpose: Stores individual product details for each order.



Attributes:



order\_item\_id: Unique identifier (Primary Key)

order\_id: References the related order (Foreign Key)

product\_id: References the purchased product (Foreign Key)

quantity: Number of units ordered

unit\_price: Price per unit at time of purchase

subtotal: Calculated as quantity × unit\_price



Relationships:



Many order items belong to one order

Many order items refer to one product



**2.NORMALIZATION EXPLANATION:**



The FlexiMart transactional schema is in Third Normal Form (3NF) because it adheres to a strict hierarchy where every non-key attribute is dependent solely on the Primary Key (PK). To reach 3NF, a design must first satisfy 1NF (atomic values and unique records) and 2NF (no partial dependencies).



Since all tables in this schema (customers, products, orders) use single-column, auto-incrementing Primary Keys, partial dependencies are mathematically impossible; an attribute cannot depend on only "part" of a single-column key.



The jump to 3NF is achieved by the elimination of transitive dependencies. A transitive dependency occurs when a non-key attribute relies on another non-key attribute rather than the PK. In the customers table, for example, the city belongs to the customer\_id. There is no "City\_ID" or "Zip\_Code" column that determines the city independently of the customer record within this table. Similarly, in the products table, the category is an attribute of the product\_id.



In the order\_items table, while subtotal is calculated from quantity and unit\_price, it remains a direct fact of the order\_item\_id at that specific point in time. Because every "fact" in the database describes the PK, the whole PK, and nothing but the PK, the design is 3NF compliant.





**Identification of Functional Dependencies:**



Functional dependencies (FD) define the relationship between attributes where the value of one (the determinant) determines the value of another.

customers Table:

customer\_id--> {first\_name, last\_name, email, phone, city, registration\_date}

email---> {customer\_id} (Since email is unique, it can also act as a determinant).

products Table:product\_id---> {product\_name, category, price, stock\_quantity}

orders Table:order\_id ---> {customer\_id, order\_date, total\_amount, status}

order\_items Table:order\_item\_id --->{order\_id, product\_id, quantity, unit\_price, subtotal}{order\_id, product\_id} ---> {quantity, unit\_price, subtotal}

This represents the logical composite relationship within an order.



**How the design avoids anomalies:**



By isolating entities into their own tables, FlexiMart avoids the three classic "Update Anomalies" found in flat files or poorly normalized databases.



Insert Anomalies: In a non-normalized system, you might be unable to add a new product unless someone has already bought it. Here, because products is a standalone table, FlexiMart can list new inventory without requiring an entry in the orders table.



Update Anomalies: If the name of a category changes (e.g., "Electronics" to "Tech"), you only update it once in the products table. If this data were stored in every order line item, you would have to update thousands of rows, risking data inconsistency if one row is missed.



Delete Anomalies: If a customer cancels their only order, you delete that record from the orders table. Because of 3NF, the customer’s profile in the customers table remains intact. In a flat structure, deleting the order would accidentally delete the customer’s contact information as well.





**3.Sample Data Representation:**



customer\_id |  first\_name | last\_name | email                   |  phone        | city     |  registration\_date

C001           Rahul         Sharma    rahul.sharma@gmail.com    +91-9876543210  Bangalore     2023-01-15

C002           Priya         Patel     priya.patel@yahoo.com     +91-9988776655  Mumbai        2023-02-20

C004           Sneha         Reddy     sneha.reddy@gmail.com     +91-9123456789  Hyderabad     2023-04-15



product\_id  |  product\_name     |  category    |   price   |  stock\_quantity

P001          Samsung Galaxy S21   Electronics   45,999.00       150

P002          Nike Running Shoes   Fashion       3,499.00        80

P003          Apple MacBook Pro    Electronics   14,141.53       45





order\_id  |  customer\_id  |  order\_date  |  Total\_amount  |  status  |

001          C001            2024-01-15      45999.00       completed

002          C002            2024-01-16      5998.00        completed

003          C002            2024-03-01      45999.00       completed





order\_item\_id   |  order\_id  |  product\_id  |  quantity |  unit\_price  |  subtotal  |

001                001            P001          1           45999.00       45999.00

002                004            P007          1           52999.00       52999.00

