"""
In hack.py, write a Python program to achieve the following:

Connect, via Python, to a SQLite database.
Alter, within your Python program, the administrator’s password.
When your program in hack.py is run on a new instance of the database, it should produce the above results.

Clock’s ticking!

"""
from cs50 import SQL

db = SQL("sqlite:///dont-panic.db")
password = input("Enter a password: ")
db.execute(
    """
    UPDATE "users"
    SET "password" = ?
    WHERE "username" = 'admin';
    """,
    password
)