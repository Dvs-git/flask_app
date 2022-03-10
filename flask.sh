TIME='v2'


docker build -t bashapp:$TIME .


result=$( sudo docker images -q bashapp )
if [[ -n "$result" ]]; 
then
	echo "image exists"
else
	echo "No such image"
fi


docker tag bashapp:$TIME marutidock/flask_app:$TIME

docker push marutidock/flask_app:$TIME
