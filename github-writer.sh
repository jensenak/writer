#!/bin/bash

while read line
do
	echo $line
	export GET_AUTHOR_DATE=$line
	export GET_COMMITTER_DATE=$line
	echo "blah" > nonsense.txt
	git commit -am "Commit A" --date=$line
	echo "blob" > nonsense.txt
	git commit -am "Commit B" --date=$line
done < dates.txt

