#!/system/bin/sh

ADID_SETTINGS=/data/data/com.google.android.gms/shared_prefs/adid_settings.xml

TRIES=6
while [ ! -s $ADID_SETTINGS ]; do
	sleep 10
	TRIES=$((TRIES - 1))
	if [ ${TRIES} -eq 0 ]; then
		echo "${ADID_SETTINGS} not available."
		exit 1
	fi
done

sed -i '/adid/d' ${ADID_SETTINGS}
