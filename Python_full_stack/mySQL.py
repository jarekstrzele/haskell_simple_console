import MySQLdb as mdb 

DBNAME = "pydb"
DBHOST = "localhost"
DBPASS = "Filozofia2!@"
DBUSER = "root"

try:
    db = mdb.connect(DBHOST, DBUSER, DBPASS, DBNAME)
    cur = db.cursor()

    query = "DELETE FROM employee WHERE Age=33"
    cur.execute(query)
    db.commit()
    print("Data is deleted")
except mdb.Err as e:
    print(f"Error {e}")

