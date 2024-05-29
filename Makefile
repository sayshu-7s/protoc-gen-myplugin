
.PHONY: install
install:
	go install ./cmd/protoc-gen-myplugin

.PHONY: gen
gen:
	# github.com/sayshu-7s/protoc-gen-myplugin
	protoc --myplugin_out=gen --myplugin_opt=param1=foo1,param2=foo2,module=github.com/sayshu-7s/protoc-gen-myplugin/gen proto/example1.proto
