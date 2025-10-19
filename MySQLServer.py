import mysql.connector
from mysql.connector.Error

def create_database():
    """Creates the 'alx_book_store' database if it does not already exist."""
    connection = None
    try:
        # Connect to MySQL server (update credentials as needed)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",         # change if needed
            password="your_password_here"  # replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error while connecting to MySQL: {e}")

    finally:
        # Close connection gracefully
        if connection and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
