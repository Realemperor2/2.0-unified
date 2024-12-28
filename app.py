from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/", methods=["GET"])
def hello_world():
    return "Hello, Unified Healthcare!"

@app.route("/user", methods=["POST"])
def create_user():
    data = request.get_json()
    # Placeholder for user creation logic
    return jsonify({"status": "User created", "data": data}), 201

@app.route("/data", methods=["POST"])
def process_data():
    data = request.get_json()
    # Placeholder for data processing logic
    return jsonify({"status": "Data processed", "data": data}), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
