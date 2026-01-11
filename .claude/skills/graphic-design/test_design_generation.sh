#!/bin/bash

# Test script for the graphic design skill
echo "Testing Graphic Design Skill"
echo "==========================="

# Test 1: Basic design generation with size
echo ""
echo "Test 1: Basic design generation with size"
echo "Command: ./scripts/generate_design.sh \"LinkedIn banner\" \"\" \"\" \"1200x628\""
echo ""
./scripts/generate_design.sh "LinkedIn banner" "" "" "1200x628"

echo ""
echo "==========================="

# Test 2: Design with style keywords and size
echo "Test 2: Design with style keywords and size"
echo "Command: ./scripts/generate_design.sh \"AI dashboard\" \"modern minimal\" \"\" \"1920x1080\""
echo ""
./scripts/generate_design.sh "AI dashboard" "modern minimal" "" "1920x1080"

echo ""
echo "==========================="

# Test 3: Design with all parameters including size
echo "Test 3: Design with all parameters including size"
echo "Command: ./scripts/generate_design.sh \"Learning platform thumbnail\" \"clean professional\" \"blue tones\" \"1080x1080\""
echo ""
./scripts/generate_design.sh "Learning platform thumbnail" "clean professional" "blue tones" "1080x1080"

echo ""
echo "==========================="
echo "Tests completed!"