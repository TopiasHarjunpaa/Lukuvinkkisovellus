from sqlalchemy import exc


class UserRepository:
    def __init__(self, db):
        self._db = db

    def get_user(self, user):
        sql = "SELECT id, password FROM users WHERE username=:username"
        result = self._db.session.execute(sql, {"username": user.username})
        return result.fetchone()

    def add_user(self, user):
        try:
            username = user.username
            password = user.password
            sql = "INSERT INTO users (username, password) VALUES (:username,:password)"
            self._db.session.execute(
                sql, {"username": username, "password": password})
            self._db.session.commit()
            return True
        except (exc.IntegrityError, AttributeError): 
            return False
        
    def delete(self):
        self._db.session.execute("DELETE FROM users CASCADE")
        self._db.session.commit()
