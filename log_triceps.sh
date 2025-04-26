#!/bin/bash

# 🕒 Create a log file with today's date
DATE=$(date +"%Y-%m-%d")
LOG_FILE="triceps_log_$DATE.txt"

echo "💪 TRICEP WORKOUT LOG – $DATE" > $LOG_FILE
echo "-----------------------------" >> $LOG_FILE

# Define workout exercises
exercises=(
  "Close-Grip Bench Press"
  "Dumbbell Overhead Extension"
  "Skull Crushers"
  "Straight Bar Pushdown"
  "Rope Pushdown"
)

# Loop through each exercise and get user input
for exercise in "${exercises[@]}"
do
  echo "📋 Logging: $exercise"
  echo "$exercise" >> $LOG_FILE
  
  read -p "  ➤ Sets: " sets
  read -p "  ➤ Reps per set: " reps
  read -p "  ➤ Weight (kg): " weight

  echo "  Sets: $sets, Reps: $reps, Weight: ${weight}kg" >> $LOG_FILE
  echo "------------------------------------" >> $LOG_FILE
done

echo ""
echo "✅ Workout logged in $LOG_FILE"