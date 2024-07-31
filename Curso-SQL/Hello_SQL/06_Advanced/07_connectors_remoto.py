import b2shy6a1adfdenolhrne.connector

config = {
    "host": "b2shy6a1adfdenolhrne-mysql.services.clever-cloud.com",
    "port": "3306",
    "database": "b2shy6a1adfdenolhrne",
    "user": "uheq51axik8xfr29",
    "password": "81w22SlzUA6DDZh9l65S" 
}

connection = b2shy6a1adfdenolhrne.connector.connect(**config)
cursor = connection.cursor()

query = "SELECT * FROM users"
cursor.execute(query)
result = cursor.fetchall()

for row in result:
    print(row)

cursor.close()
connection.close()