#!/usr/bin/python3
"""
takes in an argument and displays all values in the states table
of hbtn_0e_0_usa where name matches the argument
safe from MySQL injections
"""
from sys import argv
import MySQLdb


if __name__ == '__main__':
    db = MySQLdb.connect(host='localhost',
                         user=argv[1],
                         passwd=argv[2],
                         db=argv[3],
                         port=3306)
    cur = db.cursor()

    stmt = """
    SELECT cities.name
    FROM cities JOIN states
    ON cities.state_id=states.id
    WHERE states.name=%s;
    """
    cur.execute(stmt, (argv[4],))
    cities = cur.fetchall()

    print(", ".join([city[0] for city in cities]))
    cur.close()
    db.close()
