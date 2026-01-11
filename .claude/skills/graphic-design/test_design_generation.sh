#!/bin/bash

# Test script for the graphic design skill
echo "Testing Graphic Design Skill"
echo "==========================="

# Test 1: Basic design generation
echo ""
echo "Test 1: Basic design generation"
echo "Command: ./scripts/generate_design.sh \"LinkedIn banner\""
echo ""
./scripts/generate_design.sh "LinkedIn banner"

echo ""
echo "==========================="

# Test 2: Design with style keywords
echo "Test 2: Design with style keywords"
echo "Command: ./scripts/generate_design.sh \"AI dashboard\" \"modern minimal\""
echo ""
./scripts/generate_design.sh "AI dashboard" "modern minimal"

echo ""
echo "==========================="

# Test 3: Design with all parameters
echo "Test 3: Design with all parameters"
echo "Command: ./scripts/generate_design.sh \"Learning platform thumbnail\" \"clean professional\" \"blue tones\""
echo ""
./scripts/generate_design.sh "Learning platform thumbnail" "clean professional" "blue tones"

echo ""
echo "==========================="
echo "Tests completed!"