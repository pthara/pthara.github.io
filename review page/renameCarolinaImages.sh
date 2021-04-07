fileNamePattern="^.* .*\.jp.*g$"
for FILE in * 
	do
		echo $FILE
		if [[ $FILE =~ $fileNamePattern ]]
    then
      echo $FILE match $fileNamePattern
      newFileName=$(echo $FILE | sed -e 's/\.jpeg/\.jpg/g')
      echo renaming $FILE to $newFileName
      mv "./$FILE" "./$newFileName"
    else
      echo $FILE not match $fileNamePattern
    fi
	done
