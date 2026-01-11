#!/bin/bash

# Test script for the prompt engineering skill with JSON output
echo "Testing Prompt Engineering Skill with JSON Output"
echo "==============================================="

# Test 1: Basic prompt enhancement
echo ""
echo "Test 1: Basic prompt enhancement"
echo "Command: ./scripts/enhance_prompt.sh \"Help me write a blog post about AI\""
echo ""
./scripts/enhance_prompt.sh "Help me write a blog post about AI" | python -m json.tool

echo ""
echo "==============================================="

# Test 2: Your specific prompt
echo "Test 2: Your specific prompt enhancement"
echo "Command: ./scripts/enhance_prompt.sh \"write prompt for claude code to generate linked in post writing to write post especially story telling and explaining somthing nicely in my tone and speaking style\""
echo ""
./scripts/enhance_prompt.sh "write prompt for claude code to generate linked in post writing to write post especially story telling and explaining somthing nicely in my tone and speaking style" | python -m json.tool

echo ""
echo "==============================================="
echo "Tests completed!"