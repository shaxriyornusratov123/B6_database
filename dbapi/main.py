import psycopg2

conn= psycopg2.connect(
    host="localhost",
    port="5432",
    database="mytest_db",
    user="postgres",
    password="Nusratov07"
) # TCP connection

cur=conn.cursor()

def create_table(cur):
    stmt="""
    create table if not exists
        users(
            id serial primary key,
            email varchar(255) not null,
            password varchar(255) not null,
            is_active boolean default true
            );
    """



    cur.execute(stmt)
    conn.commit()



def insert_data(cur):
    stmt="""
    insert into users(email,password)
    values(%s,%s)
    returning id;
"""

    email=input("enter your email: ")
    password=input("enter your password: ")
    
    cur.execute(stmt,(email,password))
    conn.commit()

def select_users(cur):
    stmt="""
    select * from users;
    """

    cur.execute(stmt)

    return cur.fetchall()

create_table(cur)
insert_data(cur)
print(select_users(cur))


conn.close()

