#!/bin/bash
set -e
IFS='|'

AUTHCONFIG="{\
\"facebookAppId\":\"asdsadas\",\
\"facebookAppIdUserPool\":\"adsasd\",\
\"facebookAppSecretUserPool\":\"asdad\"\
}"
AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":true,\
\"profileName\":\"ammar-test\"\
}"

AMPLIFY="{\
\"envName\":\"dev\"\

}"
PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

amplify init \
--amplify $AMPLIFY \
--providers $PROVIDERS \
--yes
