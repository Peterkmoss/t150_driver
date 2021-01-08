all:
	mkdir -p build
	$(MAKE) -C ./hid-t150 all
	cp ./hid-t150/hid-t150.ko ./build
	$(MAKE) -C ./hid-tminit all
	cp ./hid-tminit/hid-tminit.ko ./build

clean:
	rm -rvf ./build/hid-t150*
	rm -rvf ./build/hid-tminit*
