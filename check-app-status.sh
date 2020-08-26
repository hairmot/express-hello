#!/bin/bash
HOST_NAMES=("madr" "indexing" "ranking" "orchestrator" "keyrock" "pap-pdp" "pep-proxy" "security-facade")
HOST_URLS=("https://mdr.iotcrawler.eu/actuator/health"
            "https://indexing.iotcrawler.eu/"
            "https://ranking.iotcrawler.eu/"
            "https://orchestrator.iotcrawler.eu/"
            "https://keyrock.iotcrawler.eu/"
            "https://pap-pdp.iotcrawler.eu/XACMLServletPDP"
            "https://pep-proxy.iotcrawler.eu/"
            "https://security-facade.iotcrawler.eu/CapabilityManagerServlet"
          )
STATUS=0
function checkStatus() {
  name=$1
  url=$2
  code=$(curl -sI -w "%{http_code}\n" $url -o /dev/null)
  if [[ $code == 200 ]]
  then  
    echo "$name is online"
  else
    echo "$name is offline "
    STATUS=1
  fi
}

for name in ${!HOST_NAMES[@]}
do
  checkStatus ${HOST_NAMES[$name]} ${HOST_URLS[$name]}
done
echo "status: $STATUS"
exit $STATUS
