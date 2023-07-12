from psycopg2 import connect
from psycopg2.extras import RealDictCursor

conn = connect(cursor_factory=RealDictCursor,
               dbname="cakes",
               host="",
               password="",
               user="")

if __name__ == "__main__":

    with conn.cursor() as cur:
        cur.execute("SELECT * FROM cake;")
        data = cur.fetchall()

    for row in data:
        print(row["flavour"])