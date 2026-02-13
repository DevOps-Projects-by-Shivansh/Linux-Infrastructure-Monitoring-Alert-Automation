#!/bin/bash

JIRA_URL="https://yourdomain.atlassian.net/rest/api/2/issue"
JIRA_USER="your_email"
JIRA_API_TOKEN="your_token"

curl -u $JIRA_USER:$JIRA_API_TOKEN \
-X POST \
-H "Content-Type: application/json" \
--data '{
  "fields": {
    "project": {
      "key": "OPS"
    },
    "summary": "High CPU Alert Triggered",
    "description": "CPU usage exceeded threshold",
    "issuetype": {
      "name": "Incident"
    }
  }
}' \
$JIRA_URL
