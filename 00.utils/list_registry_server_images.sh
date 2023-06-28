# Assumes htpass authentication
#Dockerhub
#registry_server='docker.mycloud.com'
#username='bob'

#localregistry
registry_server='localhost:5000'

# List all images (i.e. repositories) - DOCKER HUB
#curl -k -X GET "https://$registry_server/v2/_catalog" -u $username -H "Accept: application/json"
#Enter host password for user 'bob':
#{"repositories":["app-base","ubuntu","cache-base"]}
 
# Get all tags (versions) for a given image
#image='app-base'
#curl -k -X GET "https://$registry_server/v2/$image/tags/list" -u $username -H "Accept: application/json"
#Enter host password for user 'bob':
#{"name":"app-base","tags":["v3","latest","v4","v1","v2","v5"]}

# List all images (i.e. repositories) - LOCAL REGISTRY
curl -k -X GET "https://localhost:5000/v2/_catalog" -H "Accept: application/json"

#Enter host password for user 'bob':
{"repositories":["zucchetti"]}
 
# Get all tags (versions) for a given image
image='zucchetti'
curl -k -X GET "https://$registry_server/v2/$image/tags/list" -H "Accept: application/json"
{"name":"app-base","tags":["v3","latest","v4","v1","v2","v5"]}
