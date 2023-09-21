#!/bin/bash

# Source the script containing the functions to be tested
source your_script.sh

# Define a test runner function
run_test() {
  local description="$1"
  local expected="$2"
  local actual="$3"

  if [ "$expected" = "$actual" ]; then
    echo "[PASS] $description"
  else
    echo "[FAIL] $description"
    echo "Expected: $expected"
    echo "Actual  : $actual"
  fi
}

# Test the check_token function
test_check_token() {
  export TOKEN="abc123"
  check_token
  run_test "check_token should succeed with TOKEN set" "0" "$?"
  
  unset TOKEN
  check_token
  run_test "check_token should fail when TOKEN is not set" "1" "$?"
}

# Test the get_project_id function
test_get_project_id() {
  export PROJECT_ID="123"
  get_project_id
  run_test "get_project_id should not prompt when PROJECT_ID is set" "123" "$PROJECT_ID"
  
  unset PROJECT_ID
  echo -e "123\n" | test_get_project_id | grep "Enter the project ID:"
  run_test "get_project_id should prompt when PROJECT_ID is not set" "123" "$PROJECT_ID"
}

# Test the prompt_user_input function (requires interactive testing)

# Test the send_http_request function (requires mocking or API access)

# Run the tests
test_check_token
test_get_project_id
