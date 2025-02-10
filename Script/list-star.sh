#!/usr/bin/env bash

USER="NikolaRHristov"

mapfile -t REPOS_USER < <(printf "%s" "$(\gh api users/${USER}/repos | \jq -r '.[].full_name')" | tr -d '\r')

for REPO in "${REPOS_USER[@]}"; do
	mapfile -t DEPENDENTS < <(printf "%s" "$(github-dependents-info --repo "${REPO}" --json | \jq -r '.all_public_dependent_repos[].name')" | tr -d '\r')

	for DEPENDENT in "${DEPENDENTS[@]}"; do
		echo "$DEPENDENT"
	done
done

mapfile -t ORGS_USER < <(printf "%s" "$(\gh api users/${USER}/orgs | \jq -r '.[].login')" | tr -d '\r')

for ORG in "${ORGS_USER[@]}"; do
	mapfile -t REPOS_ORG < <(printf "%s" "$(\gh api orgs/"${ORG}"/repos | \jq -r '.[].full_name')" | tr -d '\r')

	for REPO_ORG in "${REPOS_ORG[@]}"; do
		mapfile -t DEPENDENTS < <(printf "%s" "$(github-dependents-info --repo "${REPO_ORG}" --json | \jq -r '.all_public_dependent_repos[].name')" | tr -d '\r')

		for DEPENDENT in "${DEPENDENTS[@]}"; do
			echo "$DEPENDENT"
		done
	done
done
