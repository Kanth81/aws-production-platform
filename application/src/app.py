from flask import Flask, jsonify

app = Flask(__name__)


@app.get("/")
def health():
    return jsonify(
        application="aws-production-platform",
        status="healthy",
        version="1.0.0",
    ), 200


@app.get("/health")
def liveness():
    return jsonify(status="healthy"), 200


@app.get("/ready")
def readiness():
    return jsonify(status="ready"), 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
