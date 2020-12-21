#!/usr/bin/env zsh

followers=$(python followers.py)
newFollowers=$followers

while true 
do
    newFollowers=$(python followers.py)

    if [ $newFollowers -gt $followers ]; then
        echo "Followers changed!!!"
        echo "now $newFollowers"

        /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome https://media.giphy.com/media/YTbZzCkRQCEJa/giphy.gif &
        spotify play Celebration
    else
        echo "Currently $newFollowers"
    fi

    followers=$newFollowers
    sleep 20

    pkill "Google Chrome" > /dev/null
    spotify stop
done

