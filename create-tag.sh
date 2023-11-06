
echo $GITHUB_SHA	

echo $APPICATION_NAME

#if [ $(git tag | sort -V | tail -1) ]; then
 #   LAST_TAG_GIT=$(git tag | sort -V | tail -1)
#
 #   APP_VERSION_GIT_MAX="$(cut -d'.' -f1 <<<$LAST_TAG_GIT)"
  #  APP_VERSION_GIT_MIN="$(cut -d'.' -f2 <<<$LAST_TAG_GIT)"
   # APP_VERSION_GIT_BUILD="$(cut -d'.' -f3 <<<$LAST_TAG_GIT)"
#
 #   if [ $APP_VERSION_MAX -gt $APP_VERSION_GIT_MAX ]; then
  #      NEW_TAG_GIT="${APP_VERSION_MAX}.0.0"
   # else
    #    if [ $APP_VERSION_MIN -gt $APP_VERSION_GIT_MIN ]; then
     #       NEW_TAG_GIT="${APP_VERSION_GIT_MAX}.${APP_VERSION_MIN}.0"
      #  else
       #     NEW_TAG_GIT="${APP_VERSION_GIT_MAX}.${APP_VERSION_GIT_MIN}.$(expr ${APP_VERSION_GIT_BUILD} + 1)"
        #fi
    #fi
#else
 #   NEW_TAG_GIT="0.0.0"
#fi
#git tag "${NEW_TAG_GIT}"
#git push origin --tags
#echo "${NEW_TAG_GIT}"