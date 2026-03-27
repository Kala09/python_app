from flask import Flask
app=Flask(__name__)

@app.route("/")
def hello():
    print("Hello from demo -app running in this container")

if __name__ == "__main__":
    app.run(host="0.0.0.0" , port=8080)