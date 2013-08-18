echo ""
echo "==FOREVER STOP=="
echo ""

forever stopall

echo ""
echo "==FOREVER START=="
echo ""

cd /sites/.proxy

forever start --uid proxy --append -l ~/.forever/logs/proxy.log --outFile ~/.forever/logs/proxy.out.log --errFile ~/.forever/logs/proxy.err.log --minUptime 1000 --spinSleepTime 1000 proxy.js config.json

cd /sites/mysite

forever start --uid mysite --append -l ~/.forever/logs/mysite.log --outFile ~/.forever/logs/mysite.out.log --errFile ~/.forever/logs/mysite.err.log --minUptime 1000 --spinSleepTime 1000 app.js

echo ""
echo "==FOREVER LIST=="
echo ""

forever list
