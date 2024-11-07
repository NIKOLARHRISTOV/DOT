#!/bin/bash

mapfile -t Organization < <(printf "%s" "$(\gh api users/NikolaRHristov/orgs | \jq -r '.[].login')" | tr -d '\r')

for Organization in "${Organization[@]}"; do
	Billing="Hello@PlayForm.LTD"
	Email="Hello@PlayForm.LTD"
	Twitter="PlayFormCloud"

	case "$Organization" in
	"PlayForm")
		Billing="Hello@PlayForm.LTD"
		Email="Hello@PlayForm.LTD"
		Twitter="PlayFormCloud"
		;;
	"windowsdock")
		Billing="Hello@windowsdock.app"
		Email="Hello@windowsdock.app"
		Twitter="windowsdock"
		;;
	"NastyApplication")
		Billing="nasty@PlayForm.LTD"
		Email="nasty@PlayForm.LTD"
		Twitter="NastyApplication"
		;;
	"RoundWindows")
		Billing="Hello@RoundedCorners.App"
		Email="Hello@RoundedCorners.App"
		Twitter="RCAppWindows"
		;;
	"BlackRainbowAI")
		Billing="Hello@BlackRainbow.Media"
		Email="Hello@BlackRainbow.Media"
		Twitter="BlackRainbowAI"
		;;
	"ImageWTF")
		Billing="Hello@Image.WTF"
		Email="Hello@Image.WTF"
		Twitter="ImageWTF"
		;;
	"ReturnThief")
		Billing="Hello@ReturnThief.Quest"
		Email="Hello@ReturnThief.Quest"
		;;
	"DoccerPage")
		Billing="Hello@Doccer.Page"
		Email="Hello@Doccer.Page"
		;;
	"HristovFoundation")
		Billing="Hello@Hristov.Foundation"
		Email="Hello@Hristov.Foundation"
		Twitter="NikolaRHristov"
		;;
	"MythemeCloud")
		Billing="Hello@Mytheme.Cloud"
		Email="Hello@Mytheme.Cloud"
		;;
	"NowPlayingCards")
		Billing="Hello@Now-Playing.Cards"
		Email="Hello@Now-Playing.Cards"
		Twitter="NowPlayingCard"
		;;
	"NeovimSpace")
		Billing="Hello@Neovim.Space"
		Email="Hello@Neovim.Space"
		Twitter="NeovimSpace"
		;;
	"HalleSoftware")
		Billing="Hello@Halle.Software"
		Email="Hello@Halle.Software"
		Twitter="HalleSoftware"
		;;
	"GrenadierJS")
		Billing="Grenadier@PlayForm.LTD"
		Email="Grenadier@PlayForm.LTD"
		Twitter="GrenadierJS"
		;;
	"SileaJS")
		Billing="Silea@PlayForm.LTD"
		Email="Silea@PlayForm.LTD"
		Twitter="SileaJS"
		;;
	"CrepesJS")
		Billing="Crepes@PlayForm.LTD"
		Email="Crepes@PlayForm.LTD"
		Twitter="CrepesJS"
		;;
	"SouqRs")
		Billing="Souq@PlayForm.LTD"
		Email="Souq@PlayForm.LTD"
		Twitter="SouqRs"
		;;
	"CodeEditorLand")
		Billing="Land@PlayForm.LTD"
		Email="Land@PlayForm.LTD"
		Twitter="CodeEditorLand"
		;;
	"SecretSignup")
		Billing="Signup@PlayForm.LTD"
		Email="Signup@PlayForm.LTD"
		Twitter="SecretSignup"
		;;
	"327b5")
		Billing="327b5@nikolahristov.tech"
		Email="327b5@nikolahristov.tech"
		Twitter=""
		;;
	"ae6a6")
		Billing="ae6a6@nikolahristov.tech"
		Email="ae6a6@nikolahristov.tech"
		Twitter=""
		;;
	esac

	\echo "Settings for $Organization"

	\gh api \
		--method PATCH \
		-H "Accept: application/vnd.github+json" \
		-H "X-GitHub-Api-Version: 2022-11-28" \
		orgs/"${Organization}" \
		-f location='Bulgaria' \
		-f company='PlayForm' \
		-f billing_email=${Billing} \
		-f email=${Email} \
		-f twitter_username=${Twitter} \
		-F has_organization_projects=true \
		-F has_repository_projects=false \
		-f default_repository_permission='none' \
		-F members_can_create_repositories=false \
		-F members_can_create_private_repositories=false \
		-F members_can_create_public_repositories=false \
		-f members_allowed_repository_creation_type='none' \
		-F members_can_create_pages=false \
		-F members_can_create_public_pages=false \
		-F members_can_create_private_pages=false \
		-F members_can_fork_private_repositories=false \
		-F advanced_security_enabled_for_new_repositories=true \
		-F dependabot_alerts_enabled_for_new_repositories=true \
		-F dependabot_security_updates_enabled_for_new_repositories=true \
		-F dependency_graph_enabled_for_new_repositories=true \
		-F secret_scanning_enabled_for_new_repositories=true \
		-F secret_scanning_push_protection_enabled_for_new_repositories=true \
		-F secret_scanning_push_protection_custom_link_enabled=true \
		-F secret_scanning_push_protection_custom_link='https://link.nikolahristov.tech/protection-push' \
		--silent
done
