jmeter -n \
-t ./bin/tests/${TEST_NAME}.jmx \
-l ./bin/results/$(date +%Y%m%d%H%M%S)-${TEST_NAME}.csv \
-j ./bin/results/$(date +%Y%m%d%H%M%S)-${TEST_NAME}.log \
-R ${SLAVE_IP1, SLAVE_IP1}
