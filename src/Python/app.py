from flask import Flask, request
from swagger_ui import api_doc
import requests
import os
import json

app = Flask(__name__)
env = os.environ['SW_BASES']
config = json.loads(env)
for base in config:
    headers = {'Authorization': f'Basic {base['token']}'}
    response = requests.request("GET", base['url'], headers=headers)
    for service in response.json():
        api_doc(
            app,
            config_url=f'http://127.0.0.1:5000/swagger?prefix='
                       f'{service['url_prefix']}&name={base['name']}&token={base['token']}',
            url_prefix=service['url_prefix'],
            title=service['title'],
            editor=True
        )


@app.route('/swagger')
def swagger():
    prefix = request.args.get('prefix', default='', type=str)
    name = request.args.get('name', default='', type=str)
    token = request.args.get('token', default='', type=str)
    return requests.request(
        'GET',
        f'http://localhost/{name}/hs/uAPI/{prefix}/swagger.json',
        headers={'Authorization': f'Basic {token}'}
    ).json()


if __name__ == '__main__':
    app.run()
