PORT=873
rsync:
	./build_rsync.sh
	./run_rsync.sh $(PORT)
	echo "Run ./open_fw.sh $(PORT)"
