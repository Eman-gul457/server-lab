from flask import Flask
import logging

# Setup logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

# Create Flask app
app = Flask(__name__)

@app.route("/")
def index():
    logger.info("Index page accessed")
    return "<h1>ServerLab on Kali (Flask) — HTTPS</h1>"

@app.route("/health")
def health():
    return "OK", 200

# Local dev mode (not used in production)
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
