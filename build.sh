# clone siyuan
git clone https://github.com/siyuan-note/siyuan.git
cd siyuan

# apply patch
git apply ../patches/siyuan/disable-update.patch
git apply ../patches/siyuan/mock-vip-user.patch
git apply ../patches/siyuan/add-search-files.patch

# docker build
docker build -t a .

# then manually push docker image
echo Now run docker tag a xxxx and push

