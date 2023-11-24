from flask import Flask

app = Flask(__name__)

@app.route("/", methods=["GET"])
def home_route():
    return ("Hello World, home route")

if __name__ == "__main__":
    print("Hello world, flask app started")
    app.run(host='0.0.0.0')

