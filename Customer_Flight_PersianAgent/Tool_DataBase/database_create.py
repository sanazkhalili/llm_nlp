
import sqlite3


def create_all_crawl_database():
    conn = sqlite3.connect('my_database.db')

    cursor = conn.cursor()

    with open('/content/drive/MyDrive/GAN_class/FirstProject/Tool_DataBase/database.sql', 'r') as sql_file:
        sql_script = sql_file.read()

    try:
        cursor.executescript(sql_script)
        conn.commit() 
        print("SQL script executed successfully.")
    except sqlite3.Error as e:
        print(f"An error occurred: {e}")

    cursor.close()
    conn.close()



create_all_crawl_database()
