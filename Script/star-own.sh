#!/usr/bin/env bash

User="NikolaRHristov"

mapfile -t Repository < <(printf "%s" "$(\gh api users/${User}/repos | \jq -r '.[].full_name')" | tr -d '\r')

for Repository in "${Repository[@]}"; do
	gh api -X PUT user/starred/"${Repository}" \
		--silent
done

mapfile -t Organization < <(printf "%s" "$(\gh api users/${User}/orgs | \jq -r '.[].login')" | tr -d '\r')

for Organization in "${Organization[@]}"; do
	mapfile -t Repository < <(printf "%s" "$(\gh api orgs/"${Organization}"/repos | \jq -r '.[].full_name')" | tr -d '\r')

	for Repository in "${Repository[@]}"; do
		gh api -X PUT user/starred/"${Repository}" \
			--silent
	done
done
