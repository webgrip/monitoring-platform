import os
import requests
import json
import time

# Replace with your GitHub organization name
GITHUB_ORG = os.getenv('GITHUB_ORG')
# Replace with your personal access token
GITHUB_TOKEN = os.getenv('GITHUB_TOKEN')
# Get ngrok public URL
def get_ngrok_url():
    url = 'http://monitoring-platform-ngrok:4040/api/tunnels'
    while True:
        try:
            response = requests.get(url)
            if response.status_code == 200:
                data = response.json()
                for tunnel in data['tunnels']:
                    if tunnel['name'] == 'github-webhook-receiver':
                        return tunnel['public_url']
        except Exception as e:
            print(f"Waiting for ngrok to start: {e}")
        time.sleep(5)

# Create the GitHub webhook
def add_org_webhook(org, token, webhook_url):
    url = f"https://api.github.com/orgs/{org}/hooks"
    headers = {
        "Authorization": f"token {token}",
        "Content-Type": "application/json"
    }
    data = {
        "name": "web",
        "active": True,
        "events": [
            "workflow_run",
            "workflow_job",
            "check_run",
            "push",
            "pull_request",
            "pull_request_review",
            "pull_request_review_comment",
            "issues",
            "issue_comment"
        ],
        "config": {
            "url": webhook_url,
            "content_type": "json"
        }
    }
    response = requests.post(url, headers=headers, data=json.dumps(data))
    if response.status_code in [200, 201]:
        print(f"Successfully added webhook to organization {org}")
    else:
        print(f"Failed to add webhook to organization {org}: {response.status_code} {response.text}")

if __name__ == "__main__":
    public_url = get_ngrok_url()
    print(f"ngrok public URL: {public_url}/webhook")
    add_org_webhook(GITHUB_ORG, GITHUB_TOKEN, f"{public_url}/webhook")
