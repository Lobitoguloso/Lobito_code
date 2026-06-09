#!/bin/bash

# Terminal Flappy Bird - Bash Version
# Use Space or 'w' to jump. 'q' to quit.

# --- Terminal Setup ---
printf "\e[?25l" # Hide cursor
# Restore terminal on exit
trap 'printf "\e[?25h\e[0m"; stty echo icanon; clear; exit' EXIT INT TERM
stty -echo -icanon

# --- Configuration ---
WIDTH=$(tput cols)
HEIGHT=$(tput lines)
# Limit size for better rendering
[[ $WIDTH -gt 60 ]] && WIDTH=60
[[ $HEIGHT -gt 25 ]] && HEIGHT=25

BIRD_X=10
GRAVITY=25      # Scaled by 100
JUMP_POWER=-180 # Scaled by 100
PIPE_GAP=8
PIPE_WIDTH=6
PIPE_INTERVAL=25

# --- Variables ---
bird_y=$(( (HEIGHT / 2) * 100 ))
bird_v=0
score=0
# pipe arrays: x position and gap center y
pipes_x=()
pipes_y=()

# Initial pipe
pipes_x+=($WIDTH)
pipes_y+=($(( RANDOM % (HEIGHT - PIPE_GAP - 6) + 3 + PIPE_GAP / 2 )))

# --- Functions ---
draw() {
    # Move to top-left
    printf "\e[H"
    
    local buffer=""
    local by=$(( bird_y / 100 ))
    
    for ((y=0; y<HEIGHT; y++)); do
        local line=""
        for ((x=0; x<WIDTH; x++)); do
            # Bird
            if [[ $x -eq $BIRD_X && $y -eq $by ]]; then
                line+="\e[1;33m@\e[0m" # Yellow Bird
                continue
            fi
            
            # Pipes
            local char=" "
            local color=""
            for i in "${!pipes_x[@]}"; do
                local px=${pipes_x[$i]}
                local py=${pipes_y[$i]}
                if [[ $x -ge $px && $x -lt $((px + PIPE_WIDTH)) ]]; then
                    if [[ $y -lt $((py - PIPE_GAP / 2)) || $y -gt $((py + PIPE_GAP / 2)) ]]; then
                        char="|"
                        color="\e[32m" # Green Pipe
                        if [[ $x -eq $px || $x -eq $((px + PIPE_WIDTH - 1)) ]]; then
                             char="#"
                        fi
                        break
                    fi
                fi
            done
            
            if [[ "$char" != " " ]]; then
                line+="${color}${char}\e[0m"
            elif [[ $y -eq $((HEIGHT - 1)) ]]; then
                line+="\e[31m_\e[0m" # Ground
            else
                line+=" "
            fi
        done
        buffer+="$line\r\n"
    done
    printf "%b" "$buffer"
    printf "\e[1;1H\e[1;37m Score: $score  \e[0m"
}

# --- Main Loop ---
while true; do
    # 1. Input (Non-blocking)
    # Using read with timeout to act as frame timer
    read -n 1 -t 0.05 key
    case "$key" in
        " "|w) bird_v=$JUMP_POWER ;;
        q) exit ;;
    esac
    
    # 2. Physics
    bird_v=$(( bird_v + GRAVITY ))
    bird_y=$(( bird_y + bird_v ))
    
    # Move pipes
    for i in "${!pipes_x[@]}"; do
        ((pipes_x[i]--))
    done
    
    # Pipe Lifecycle
    if [[ ${#pipes_x[@]} -gt 0 && ${pipes_x[0]} -lt $(( -PIPE_WIDTH )) ]]; then
        pipes_x=("${pipes_x[@]:1}")
        pipes_y=("${pipes_y[@]:1}")
    fi
    
    if [[ ${#pipes_x[@]} -eq 0 || ${pipes_x[-1]} -le $((WIDTH - PIPE_INTERVAL)) ]]; then
        pipes_x+=($WIDTH)
        pipes_y+=($(( RANDOM % (HEIGHT - PIPE_GAP - 6) + 3 + PIPE_GAP / 2 )))
    fi
    
    # Scoring
    for i in "${!pipes_x[@]}"; do
        if [[ ${pipes_x[$i]} -eq $((BIRD_X - PIPE_WIDTH)) ]]; then
            ((score++))
        fi
    done
    
    # 3. Collision
    by=$(( bird_y / 100 ))
    # Ground/Ceiling
    if [[ $by -ge $((HEIGHT - 1)) || $by -lt 0 ]]; then
        break
    fi
    # Pipes
    for i in "${!pipes_x[@]}"; do
        px=${pipes_x[$i]}
        py=${pipes_y[$i]}
        if [[ $BIRD_X -ge $px && $BIRD_X -lt $((px + PIPE_WIDTH)) ]]; then
            if [[ $by -lt $((py - PIPE_GAP / 2)) || $by -gt $((py + PIPE_GAP / 2)) ]]; then
                break 2
            fi
        fi
    done
    
    # 4. Render
    draw
done

# Game Over Screen
printf "\e[$((HEIGHT / 2));$((WIDTH / 2 - 5))H\e[1;31m GAME OVER! \e[0m"
printf "\e[$((HEIGHT / 2 + 1));$((WIDTH / 2 - 5))H\e[1;37m Score: $score \e[0m"
sleep 2
