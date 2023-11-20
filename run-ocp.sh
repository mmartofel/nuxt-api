DATE=`date`
oc delete imagestreamtag.image.openshift.io nuxt-api:latest
oc delete buildconfig nuxt-api
oc delete deployment nuxt-api
oc delete service nuxt-api
oc delete route nuxt-api

git add .
git commit -m "update $DATE"
git push origin main

oc new-app https://github.com/mmartofel/nuxt-api

oc expose service/nuxt-api

