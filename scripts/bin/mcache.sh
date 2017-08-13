rm -f -r -v ~/workspace/mage/htdocs/var/cache/*
rm -f -r -v ~/workspace/mage/htdocs/var/log/*
rm -f -r -v ~/workspace/mage/htdocs/var/report/*
rm -f -r -v ~/workspace/mage/htdocs/var/locks/*
rm -f -r -v ~/workspace/mage/htdocs/var/session/*
redis-cli -n 5 flushdb
