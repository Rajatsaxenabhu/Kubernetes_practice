docker pull kiran2361993/testing:latestappresults
docker pull kiran2361993/testing:latestappvote
docker pull kiran2361993/testing:latestappworker

docker tag kiran2361993/testing:latestappresults saxenarajat499/testings:results
docker tag kiran2361993/testing:latestappvote saxenarajat499/testings:vote
docker tag kiran2361993/testing:latestappworker saxenarajat499/testings:worker

docker push saxenarajat499/testings:results
docker push saxenarajat499/testings:vote
docker push saxenarajat499/testings:worker