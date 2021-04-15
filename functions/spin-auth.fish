function spin-auth
  az login
  wait
  set -xg AZ_REFRESH_TOKEN (cat ~/.azure/accessTokens.json | jq -r '.[0].refreshToken')
  set -xg AZ_ACCESS_TOKEN (az account get-access-token --resource api://9a52d6ea-d7cf-4921-9c2a-9525ab389d17 | jq -r '.accessToken')
  echo "The access token => $AZ_ACCESS_TOKEN"
  echo "The refresh token => $AZ_REFRESH_TOKEN"
end

