# /usr/bin/env python3
from flask import Flask, render_template

app = Flask(__name__)


def test_func(x, y):
	return x + y


@app.route("/")
def index():
    print(render_template("index.html"))
    return render_template("index.html")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port="5000", debug=True)
