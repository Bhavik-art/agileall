from flask import Flask
import mysql.connector

app = Flask(__name__)


@app.route("/")
def home():
    connection = None
    try:
        connection = mysql.connector.connect(
            host="db",
            user="root",
            password="rootpassword",
            database="testdb",
        )

        if connection.is_connected():
            return "Flask application is running and connected to MySQL using Docker Compose!"

        return "Database connection failed."
    except Exception as e:
        return "Database connection failed: " + str(e), 500
    finally:
        if connection is not None and connection.is_connected():
            connection.close()


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
