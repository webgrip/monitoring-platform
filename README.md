# Running it

## Prerequisites
- python venv
```bash
python3 -m venv ~/venv

```

## Setup

Adding the webhook to your organization

```bash
source ~/venv/bin/activate
pip3 install --upgrade -r requirements.txt
python3 GITHUB_TOKEN=[your token] GITHUB_ORG=[your organisation] add_org_webhook.py
````

## Running

- Run docker compose
`docker-compose up`
- Log into https://localhost:3000 with admin:admin
- Reset your pw to what you like