
folders="light dark bias flat"
rm $1/temperatures.txt

for folder in $folders
do
	echo "$folder" >> $1/temperatures.txt
	exiftool -p '$FileName $DateTimeOriginal $CameraTemperature' $1/$folder/*.CR2 | sed -r 's/:/-/' | sed -r 's/:/-/'>> $1/temperatures.txt
done


