#!/bin/bash
#                                                                                                                                                        
# summarize.sh - print a markdown table for data in files inputted
#

for file in "$@"; 
do
    if [[ ! -r "$file" ]]; then
        echo "error needs a readable file"
    else
        full_path="$PATH"
        basename="$(basename "$full_path")"
        echo "## "$basename""

        if [[ "$file" == *.sh ]]; then
            echo "```bash"
            echo "grep -v '^*#!' $PATH | cut -f 1 -d 'RS'"
            echo "```"
        elif [[ "$file" == *.c || *.h ]]; then
            echo "```c"
            echo "grep -v '^*#!' $PATH | sed '/^$/,$d' |"
            echo "```"
        else
            continue
        fi
    fi
done


exit 0