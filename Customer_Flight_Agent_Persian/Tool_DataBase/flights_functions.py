import sqlite3
from langchain_core.tools import tool
from langchain_core.runnables import ensure_config


@tool
def search_flights(destination, origin):
    """Search for flights based on destination.
        Values are Persian..
        You have to only search Persian for destination and origin fields"""

    conn = sqlite3.connect('/content/drive/MyDrive/GAN_class/FirstProject/my_database.db')
    cursor = conn.cursor()
    params = []
    query = "SELECT info_flight.id, info_flight.day, info_flight.origin, destination.airport_destination, info_flight.date FROM info_flight join destination on id_destination=destination.id  WHERE 1 = 1"

    if destination: 
      query += " AND destination.airport_destination = ?"
      params.append('فرودگاه '+ destination)
    if origin:
      query += " AND info_flight.origin = ?"
      params.append(origin)

    cursor.execute(query, params)
    rows = cursor.fetchall()
    column_names = [column[0] for column in cursor.description]
    results = [dict(zip(column_names, row)) for row in rows]

    cursor.close()
    conn.close()

    return results



@tool
def cancel_ticket(ticket_id):
    """Cancel the user's ticket and remove it from the database."""

    conn = sqlite3.connect('/content/drive/MyDrive/GAN_class/FirstProject/my_database.db')
    cursor = conn.cursor()
    cursor.execute(
        "SELECT * FROM ticket_airplane WHERE ticket_id = ?", (ticket_id,)
    )
    current_flight = cursor.fetchone()
    if not current_flight:
        cursor.close()
        conn.close()
        print("No existing ticket found for the given ticket number.")
    else:
        # Check the signed-in user actually has this ticket
        cursor.execute(
            "SELECT flight_id FROM ticket_airplane WHERE ticket_id = ?",
            (ticket_id,),
        )
        current_ticket = cursor.fetchone()
        if not current_ticket:
            cursor.close()
            conn.close()
            print(f"Not the owner of ticket {ticket_id}")

        # In a real application, you'd likely add additional checks here to enforce business logic,
        # like "does the new departure airport match the current ticket", etc.
        # While it's best to try to be *proactive* in 'type-hinting' policies to the LLM
        # it's inevitably going to get things wrong, so you **also** need to ensure your
        # API enforces valid behavior
        cursor.execute(
            "DELETE FROM ticket_airplane WHERE ticket_id = ?",
            (ticket_id,),
        )
        conn.commit()

        cursor.close()
        conn.close()
        print("Ticket successfully updated to new flight.")



@tool
def take_ticket(flight_id, passenger_id):
    """take a ticket based on flight id and passenger_id.
       Values for search have to be Persian"""
    
    conn = sqlite3.connect('/content/drive/MyDrive/GAN_class/FirstProject/my_database.db')
    cursor = conn.cursor()

    query = "SELECT MAX(seat_number) FROM ticket_airplane WHERE flight_id = ?;"
    cursor.execute(query, (flight_id,))
    seat_number = cursor.fetchone()


    if seat_number is None or seat_number[0] is None:
            seat_number = 0
    else:
            seat_number = seat_number[0]

        # Check if the hotel is full (assuming 10 is the maximum room number)
    if seat_number == 10:
            result = "It is full, You can choose another airpalne."
    else:
          insert_query = "INSERT INTO ticket_airplane (passenger_id, flight_id, seat_number) VALUES (?, ?, ?);"
          cursor.execute(insert_query, (passenger_id, flight_id, int(seat_number)+1))
          
          conn.commit()
          
          result = "take a ticket successful. Seat number: " + str(seat_number)

    cursor.close()
    conn.close()

    return result
    