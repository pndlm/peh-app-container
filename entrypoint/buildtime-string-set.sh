# container build time environment variable
# useful most for deployed builds
if [ -f "/etc/container_buildtime" ]; then
	CONTAINER_BUILDTIME=$(< "/etc/container_buildtime")
	export BUILDTIME_STRING=$(TZ=America/Los_Angeles date -d @${CONTAINER_BUILDTIME})
fi
