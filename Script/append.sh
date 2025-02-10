#!/usr/bin/env bash

cat package.json | jq '. + {
	"private": false,
	"publishConfig": {
		"provenance": true,
		"access": "public"
	},
	"author": {
		"email": "Nikola@PlayForm.LTD",
		"name": "Nikola R. Hristov",
		"url": "HTTPS://nikolahristov.tech"
	},
	"license": "MIT",
	"type": "module",
}' >|package.json

sort-package-json
