
./_get-src.sh
cd siyuan

export GO111MODULE=on
export CGO_ENABLED=1
go build --tags fts5 -v -ldflags "-s -w"

# then
# cd ../app
# ln -s ../kernel/kernel
# and run
# ./kernel
# to start

