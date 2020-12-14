from flask import Flask, jsonify, request
from tasks import tasks

app = Flask(__name__)


# Get Data Routes
@app.route('/')
def getTasks():
    # return jsonify(tasks)
    return jsonify({'tasks': tasks})
# Create Data Routes


@app.route('/', methods=['POST'])
def addTask():
    new_task = {
        'name': request.json['name'],
        'description': request.json['description']
    }
    tasks.append(new_task)
    return jsonify({'tasks': tasks})


# Test
@app.route('/test')
def test():
    return "Conected!"


if __name__ == '__main__':
    app.run(host="0.0.0.0", port=4000, debug=True)
