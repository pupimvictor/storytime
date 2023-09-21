# Bash Script for Pivotal Tracker API Integration

This Bash script helps you create a Pivotal Tracker story using the Pivotal Tracker API. The script prompts you for various inputs, sends an HTTP request to create the story, and provides feedback based on the HTTP response code.

## Prerequisites

Before using this script, make sure you have the following:

- Pivotal Tracker API token: You need to export your Pivotal Tracker API token as an environment variable named `TOKEN`. You can obtain your API token from your Pivotal Tracker account settings.

## Usage

1. Save the script to a file (e.g., `create_pivotal_story.sh`) and make it executable with `chmod +x create_pivotal_story.sh`.

2. Execute the script:

   ```bash
   ./create_pivotal_story.sh
   ```

3. Follow the prompts to provide the necessary information:

   - Project ID: Enter your Pivotal Tracker project ID. If the `PROJECT_ID` environment variable is already set, you won't be prompted.

   - Story Name: Enter a name for the story.

   - Story Description: Enter a description for the story.

   - Story Type: Select a story type from the available options: "feature," "bug," or "chore."

   - Story Priority: Select a story priority from the available options: "p1," "p2," or "p3."

4. The script will send an HTTP request to create the story, and based on the response, it will provide feedback.

   - If the HTTP response code is in the 200 range, it will display a success message along with the story ID and URL.

   - If the HTTP response code is not in the 200 range, it will display an error message.

## Additional Notes

- The script uses `jq` to parse JSON responses. Make sure you have `jq` installed for it to work correctly.

- The script can be further extended and customized to suit your specific needs.

--- CREATED BY CHATGPT 3.5 ---
