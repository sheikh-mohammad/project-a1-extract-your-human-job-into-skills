#!/bin/bash

# Test script for the LinkedIn post writing skill with automated posting
echo "Testing LinkedIn Post Writing Skill with Automated Posting"
echo "========================================================="

# Test 1: Generate a post without posting to LinkedIn
echo ""
echo "Test 1: Generate a post without posting to LinkedIn"
echo "Command: ./scripts/generate_post.sh \"Python Programming\" \"educate\""
echo ""
./scripts/generate_post.sh "Python Programming" "educate"

echo ""
echo "========================================================="

# Test 2: Generate a post and attempt to post to LinkedIn (dry run)
echo ""
echo "Test 2: Generate a post and attempt to post to LinkedIn"
echo "Command: ./scripts/generate_post.sh \"Python Programming\" \"educate\" true"
echo ""
echo "Note: This would attempt to post to LinkedIn if the Playwright server was running."
./scripts/generate_post.sh "Python Programming" "educate" true

echo ""
echo "========================================================="
echo "Tests completed!"