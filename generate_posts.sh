#!/bin/bash

# Get the API key from the environment variable
LANGFLOW_API_KEY=$(cat .env | grep LANGFLOW_API_KEY | cut -d '=' -f 2)

echo "LANGFLOW_API_KEY: $LANGFLOW_API_KEY"

# Check if the input file exists
if [ ! -f "youtube_videos.txt" ]; then
    echo "Error: youtube_videos.txt file not found"
    exit 1
fi

# Process each line (URL) from the file
while IFS= read -r VIDEO_URL || [ -n "$VIDEO_URL" ]; do
    # Skip empty lines
    if [ -z "$VIDEO_URL" ]; then
        continue
    fi

    echo "Generating post for video $VIDEO_URL"

    # Generate the post
    curl --request POST \
      --url "http://localhost:7860/api/v1/run/4077d077-5721-4921-b41f-9d9471c55abf?stream=false" \
      --header "Content-Type: application/json" \
      --header "x-api-key: $LANGFLOW_API_KEY" \
      --data '{
        "input_value": "'$VIDEO_URL'",
        "output_type": "chat",
        "input_type": "chat"
      }'
    
    echo -e "\n-----------------------------------\n"
done < youtube_videos.txt
