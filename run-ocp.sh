DATE=`date`
oc delete imagestreamtag.image.openshift.io nuxt-ui:latest
oc delete buildconfig nuxt-ui
oc delete deployment nuxt-ui
oc delete service nuxt-ui
oc delete route nuxt-ui

git add .
git commit -m "update $DATE"
git push origin main

oc new-app https://github.com/mmartofel/nuxt-ui

oc expose service/nuxt-ui

