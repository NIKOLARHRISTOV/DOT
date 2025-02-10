#!/usr/bin/env bash

DEVDIR="~/Developer/app"

USERS=(
	"NikolaRHristov"
)

for USER in "${USERS[@]}"; do
	USER=$(echo "$USER" | tr -d '\"')
	readarray -t REPOS < <(gh api users/"$USER"/repos | jq .[].ssh_url)
	readarray -t ORGS < <(gh api users/"$USER"/orgs | jq .[].login)

	echo "Cloning all for user: $USER"
	mkdir -p $DEVDIR/"$USER"
	cd $DEVDIR/"$USER" || exit

	for REPO in "${REPOS[@]}"; do
		REPO=$(echo "$REPO" | sed "s/git@github\.com\:/ssh\:\/\/git\@github\.com\//" | tr -d '\"')

		REPONAME="${REPO/.git/}"
		REPONAME="${REPONAME/ssh:\/\/git@github.com\//}"
		mkdir $DEVDIR/"$REPONAME"
		cd $DEVDIR/"$REPONAME" || exit

		git init
		git remote add origin "$REPO"
	done

	cd - || exit

	for ORG in "${ORGS[@]}"; do
		ORG=$(echo "$ORG" | tr -d '\"')
		readarray -t REPOS < <(gh api orgs/"$ORG"/repos | jq .[].ssh_url)

		echo "Cloning all for org: $ORG"
		mkdir -p $DEVDIR/"$ORG"
		cd $DEVDIR/"$ORG" || exit

		for REPO in "${REPOS[@]}"; do
			REPO=$(echo "$REPO" | sed "s/git@github\.com\:/ssh\:\/\/git\@github\.com\//" | tr -d '\"')

			REPONAME="${REPO/.git/}"
			REPONAME="${REPONAME/ssh:\/\/git@github.com\//}"
			mkdir $DEVDIR/"$REPONAME"
			cd $DEVDIR/"$REPONAME" || exit

			git init
			git remote add origin "$REPO"
		done

		cd - || exit
	done
done
