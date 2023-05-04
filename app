import requests
class IRCTC:
    def __init__(self):
        user_input = input("""How you would like to proceed?
            Enter 1 to check the train status
            Enter 2 to check PNR
            Enter 3 to check train schedule""")
        if user_input == "1":
            print("Live status of train")
        elif user_input == "2":
            print("PNR")
        else:
            self.train_schedule()

    def train_schedule(self):
        train_number = input("Enter train number: ")
        self.fetch_data(train_number)

    def fetch_data(self, train_number):
        url = f"http://indianrailapi.com/api/v2/livetrainstatus/apikey/30c382602bfa67c8a7c580e6cfe2becb/trainnumber/{train_number}/date/20230504/"
        response = requests.get(url)
        data = response.json()
        print(data)

obj = IRCTC()
