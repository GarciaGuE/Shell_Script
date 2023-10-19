
# Prompt the user to enter the filename
read -p "Enter the filename: " file

if [ -e "$file" ]; then
    echo "The file exists"
    
    if [ -s "$file" ]; then
        echo "The file has a size greater than zero"
    else
        echo "The file has a size of zero"
    fi

	if [ -f "$file" ]; then
        echo "It is a regular file"
    else
        echo "It is not a regular file"
    fi

	if [ -d "$file" ]; then
        echo "It is a directory"
    else
        echo "It is not a directory"
    fi

	if [ -r "$file" ]; then
        echo "You have read permission"
    else
        echo "You do not have read permission"
    fi

	if [ -w "$file" ]; then
        echo "You have write permission"
    else
        echo "You do not have write permission"
    fi

	if [ -x "$file" ]; then
        echo "You have execute permission"
    else
        echo "You do not have execute permission"
    fi
else
    echo "The file does not exist"
fi
