wget -SqO- --header='Origin: http://www.smauec.net' --header="x-access-token:$(jq .result.accessToken ../tmp/output.json | cut -b 2- | rev | cut -b2- | rev )" "http://api-users.smauec.net/api/$1" | jq .
