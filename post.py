import json
import requests

data= {
  "email": "isaac.gonzales@alumni.usp.br",
  "assistantId": "4d5af747-4edd-4147-9689-7badeef8c65a",
  "url": "https://api.us-south.assistant.watson.cloud.ibm.com/instances/cb500637-e7d0-4d12-ad52-aad24714feee",
  "skillId": "4d5af747-4edd-4147-9689-7badeef8c65a",
  "apiKey": "zyoYgnlCGewxlM3fadB6_y3Xr4382BABTaf21H5oRPAh",
  "submitConfirmation": true
}
url = "http://172.21.188.211:3000/submit"
headers = {'Content-type': 'application/json', 'Accept': 'text/plain'}
r = requests.post(url, json=json.dumps(data))
print(r)
