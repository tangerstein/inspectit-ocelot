#!/bin/sh
/wait-for-it.sh $TARGET_HOST:$TARGET_PORT --timeout=60 -- selenium-side-runner --base-url=$TARGET_URL -w 1 --server http://$SELENIUM_HUB_HOST:4444/wd/hub /sides/Simple.side -c "browserName='chrome'"
while true; do
    selenium-side-runner --base-url=$TARGET_URL -w 1 --server http://$SELENIUM_HUB_HOST:4444/wd/hub /sides/Simple.side -c "browserName='firefox'"
    selenium-side-runner --base-url=$TARGET_URL -w 1 --server http://$SELENIUM_HUB_HOST:4444/wd/hub /sides/Simple.side -c "browserName='chrome'"
done