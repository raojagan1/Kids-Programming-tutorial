#!/bin/bash
# Japanese Character Rain - Fun Terminal Animation!

# Array of Japanese characters
chars=("あ" "い" "う" "え" "お" "か" "き" "く" "け" "こ" "さ" "し" "す" "せ" "そ" "た" "ち" "つ" "て" "と" "な" "に" "ぬ" "ね" "の" "は" "ひ" "ふ" "へ" "ほ" "ま" "み" "む" "め" "も" "や" "ゆ" "よ" "ら" "り" "る" "れ" "ろ" "わ" "を" "ん" "ア" "イ" "ウ" "エ" "オ" "カ" "キ" "ク" "ケ" "コ" "サ" "シ" "ス" "セ" "ソ" "タ" "チ" "ツ" "テ" "ト" "ナ" "ニ" "ヌ" "ネ" "ノ" "ハ" "ヒ" "フ" "ヘ" "ホ" "マ" "ミ" "ム" "メ" "モ" "ヤ" "ユ" "ヨ" "ラ" "リ" "ル" "レ" "ロ" "ワ" "を" "ン")

# Get terminal dimensions
COLS=$(tput cols)
ROWS=$(tput lines)

# Clear screen
clear

# Function to display random Japanese characters
rain() {
    for ((i=0; i<100; i++)); do
        # Random position
        row=$((RANDOM % ROWS))
        col=$((RANDOM % COLS))
        
        # Random character from array
        char=${chars[$((RANDOM % ${#chars[@]}))]}
        
        # Move cursor and print character
        tput cup $row $col
        echo -n "$char"
        
        # Small delay
        sleep 0.01
    done
}

# Main loop
echo "Japanese Character Rain! (Press Ctrl+C to stop)"
sleep 2

while true; do
    rain
done
