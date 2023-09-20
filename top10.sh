#!/bin/bash
#                                                                                                                                                        
# top10.sh - print a markdown table for data is csv file
#

file=$1
if [[ -e "$file" ]]; then
    if [[ -r "$file" ]]; then
        header=$(grep 'All' "$file" | cut -f 2,10 -d ','| sort -t ',' -n -r -k2 | sed 's/,/|/g;s/^/|/;s/$/|/' | head -n 10 ) 
        echo "| Area | Doses Administered|"
        echo "| :--------- | --------: | "
        echo "$header"
    fi

else
    echo "error needs readable file as input"
    echo "exit code 1"
fi
