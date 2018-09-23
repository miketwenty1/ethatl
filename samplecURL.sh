#!/bin/bash

curl -v -XPOST https://console.provide.services:443/api/applications/5f7217e3-c5fa-4a3e-8f7f-a3e0729df61a/contracts/6c9de4c0-ddeb-4e89-b6ce-a046fcfbcfb4/execution \
-H 'content-type: application/json' \
-H 'x-api-authorization: bearer MzE4ZDBmZTItYmQ0Yy00NzgwLWFjNTQtNWNjNmNiNjQ1M2ZhOjU5YmNmMDQ2YjkwZjkxODc2YWQwOTBjYTk3MTAzMmU2' \
-d '{"wallet_id": "55ec77d8-5399-4a52-ae8a-533604068f1d", "method": "beforeAll", "params": [], "value": 0}'