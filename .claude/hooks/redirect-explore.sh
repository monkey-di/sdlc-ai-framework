#!/bin/bash

# Read JSON input from stdin
INPUT=$(cat)

# Extract subagent_type
SUBAGENT_TYPE=$(echo "$INPUT" | jq -r '.tool_input.subagent_type // ""')

# Redirect Explore to custom-explore
if [[ "$SUBAGENT_TYPE" == "Explore" ]]; then
    # Build updated input with all original parameters plus modified subagent_type
    UPDATED_INPUT=$(echo "$INPUT" | jq -c '.tool_input | .subagent_type = "custom-explore"')

    cat <<EOF
{
  "hookSpecificOutput": {
    "hookEventName": "PreToolUse",
    "permissionDecision": "allow",
    "permissionDecisionReason": "Redirecting Explore to custom-explore",
    "updatedInput": $UPDATED_INPUT
  }
}
EOF
    exit 0
fi

# Allow other calls unchanged
exit 0
