#!/usr/bin/env bash

cd node_modules/sports-tracker-client
npm run build
mv dist/bundle.js ../sports-tracker-server/build/bundle.js
cd ../sports-tracker-server
knex migrate:latest
knex seed:run