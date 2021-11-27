import requests

class AppLibrary:
    def __init__(self):
        self._base_url = "http://localhost:5000"
        self.reset_application()

    def reset_application(self):
        requests.post(f"{self._base_url}/tests/reset")

    def create_user(self, username, password, password_confirm):
        data = {"username":username, "password":password,
                "password_confirm":password_confirm}

        requests.post(f"{self._base_url}/register", data=data)
