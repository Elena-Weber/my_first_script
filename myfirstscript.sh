#! /bin/bash

echo
echo " - - - - - - - - - - - - - - - "
echo
read -p "Hi! My name is B-A-S-H and I was created by Elena Weber. What is your name? " usersname
if [ -n "$usersname" ]; then
    if [[ "$usersname" =~ ^[0-9]+$ ]]; then
        echo "Is that your ID? Cool!"
    else
        echo "Nice to meet you, $usersname!"
    fi
else
    echo
    read -p "Can you say that again, please? I'm not sure I've heard you right. " usersname
    if [ -n "$usersname" ]; then
        echo "Nice to meet you, $usersname!"
    else
        echo "Nice to meet you, stranger!"
    fi
fi

echo
read -p "And where are you from? " userslocation
if [ -z "$userslocation" ]; then
    echo "It's ok, you don't have to answer."
else
    if [[ "$userslocation" =~ ^[0-9]+$ ]]; then
        echo "Are you sure that's a place? Looks like a number. Anyway..."
    else
        echo "I've never been to $userslocation but would like to visit it someday."
    fi
fi

echo
read -p "What are you going to do today? " usersplans
if [ -z "$usersplans" ]; then
    echo "I see, you like to keep secrets. :)"
else
    if [[ "$usersplans" =~ ^[0-9]+$ ]]; then
        echo "Is that a number of things to do?"
    else
        echo "$usersplans sounds like fun!"
    fi
fi

echo
read -p "If you don't mind me asking, what's your occupation? " usersjob
if [ -z "$usersjob" ]; then
    echo "Somebody is mysterious today!"
else
    if [[ "$usersjob" =~ ^[0-9]+$ ]]; then
        echo "That's a really weird job!"
    else
        echo "Wow! You're a(n) $usersjob! Amazing! I'd love to be a(n) $usersjob, too. That's my dream job!"
    fi
fi

echo
read -p "Are you enjoying it? (y/N) " jobenjoying
if [ "$jobenjoying" == "" ]; then
    echo "I'm afraid I didn't get it but it's ok, no problem."
elif [ $jobenjoying == "n" -o $jobenjoying == "N" ]; then
    echo "That's so sad to hear."
elif [ $jobenjoying == "y" -o $jobenjoying == "Y" ]; then
    echo "I'm so happy for you!"
else
    echo "I'm afraid I didn't get it but it's ok, no problem."
fi

echo
read -p "Do you happen to know what date and time it is? (Y/n) " datetime
case $datetime in
    "")
        echo "No problem."
        ;;
    "y" | "Y")
        echo "So you're saying it's $(date). Good to know! Thanks!"
        ;;
    "n" | "N")
        echo "Well, it's good that I know! It's $(date)."
        ;;
    *)
        echo "Yeah, I'm not sure either."
        ;;
esac

echo
echo "Anyway, I have to go now but I'd like to talk with you again soon."
echo

cal

echo
read -p "Are you free some time next week? (Y/n) " nextweek
echo
case $nextweek in
    "y" | "Y")
        read -p "What weekday works best for you? " weekday
        echo
        if [ -n "$weekday" ]; then
            read -p "Super! I can do $weekday. What time? " nexttime
            if [ -n "$nexttime" ]; then
                if [[ "$nexttime" =~ ^[0-9]+$ ]]; then
                    echo "Great! I'll call you at $nexttime."
                else
                    echo "Never mind. I'll call you later then."
                fi
            else
                echo "Never mind. I'll call you later then."
            fi
        else
            echo "Never mind. I'll call you later then."
        fi
        ;;
    "n" | "N" | "" | *)
        echo "Never mind. I'll call you later then."
        ;;
esac

echo
echo "I'd better be going. It's been great talking with you. Bye-bye! :)"
echo
echo " - - - - - - - - - - - - - - - "
echo

# this is my first script :)