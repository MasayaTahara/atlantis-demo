# atlantis-demo

## Preparation

1. Start ngrok
    ```sh
    ngrok http 4141
    ```

1. In a new tab, create an env var with your ngrok's hostname
    ```sh
    URL="https://{YOUR_HOSTNAME}.ngrok.io"
    ```

1. Create webhook secret (you can use https://www.random.org/strings/)
    ```sh
    SECRET="{YOUR_RANDOM_STRING}"
    ```

1. Go to your GitHub repo and add webhook
    - Payload URL: https://{YOUR_HOSTNAME}.ngrok.io/events
    - Content type: application/json
    - Secret: YOUR_RANDOM_STRING
    - trigger events: Let me select individual events
        - Pull request reviews
        - Pushes
        - Issue comments
        - Pull requests
        - Active
    - Click "Add Webhook"

1. Create PAT in GitHub with repo scope and set token as env var
    ```sh
    TOKEN="{YOUR_TOKEN}"
    ```

1. Start Atlantis
    ```sh
    USERNAME="{the username of your GitHub}"
    REPO_ALLOWLIST="$YOUR_GIT_HOST/$YOUR_USERNAME/$YOUR_REPO"
    # ex. REPO_ALLOWLIST="github.com/runatlantis/atlantis"
    atlantis server \
        --atlantis-url="$URL" \
        --gh-user="$USERNAME" \
        --gh-token="$TOKEN" \
        --gh-webhook-secret="$SECRET" \
        --repo-allowlist="$REPO_ALLOWLIST"
    ```
