import sqlite3
from langchain_core.tools import tool


@tool
def search_hotel(city):
    """Search for hotel based on city. Values are Persian"""
    conn = sqlite3.connect('/content/drive/MyDrive/GAN_class/FirstProject/my_database.db')
    cursor = conn.cursor()
    query = "SELECT * from hotel WHERE city=? ;"
    cursor.execute(query, (city,))
    rows = cursor.fetchall()
    column_names = [column[0] for column in cursor.description]
    results = [dict(zip(column_names, row)) for row in rows]

    cursor.close()
    conn.close()

    return results



@tool
def book_hotel(hotel_id, passenger_id):
    """Book a hotel based on hotel id and passenger_id. Values are Persian"""
    conn = sqlite3.connect('/content/drive/MyDrive/GAN_class/FirstProject/my_database.db')
    cursor = conn.cursor()
    query = "SELECT MAX(room_number) FROM hotel_book WHERE hotel_id = ?;"
    cursor.execute(query, (hotel_id,))
    room_number = cursor.fetchone()


    if room_number is None or room_number[0] is None:
        room_number = 0
    else:
        room_number = room_number[0]

    # Check if the hotel is full (assuming 10 is the maximum room number)
    if room_number == 10:
        result = "It is full, You can choose another hotel."
    else:
        insert_query = "INSERT INTO hotel_book (passenger_id, hotel_id, room_number) VALUES (?, ?, ?);"
        cursor.execute(insert_query, (passenger_id, hotel_id, int(room_number) + 1))
        
        conn.commit()
        
        result = "Booking successful. Room number: " + str(room_number + 1)

    cursor.close()
    conn.close()

    return result


@tool
def cancel_hotel(passenger_id):
    """Cancel the user's hotel and remove it from the database."""

    conn = sqlite3.connect('/content/drive/MyDrive/GAN_class/FirstProject/my_database.db')
    cursor = conn.cursor()

    cursor.execute(
        "DELETE FROM hotel_book WHERE passenger_id = ?",
        (passenger_id,),
    )
    conn.commit()

    cursor.close()
    conn.close()
    print("It Successfully cancel.")
    

