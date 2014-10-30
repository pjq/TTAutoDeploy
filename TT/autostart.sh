#!/bin/sh
#
#echo ./percona/setup.sh install
#./percona/setup.sh install
#echo ./im_db_proxy/setup.sh install
#./im_db_proxy/setup.sh install
#echo ./redis/setup.sh install
#./redis/setup.sh install
#echo ./im_server/setup.sh install
#./im_server/setup.sh install
#echo ./setup.sh install
#./setup.sh install
#echo ./jdk/setup.sh install
#./jdk/setup.sh install
#echo ./im_web/setup.sh install
#./im_web/setup.sh install
#echo ./nginx_php/nginx/setup.sh install
#./nginx_php/nginx/setup.sh install

for i in `ls`
do
    if [ -d ${i} ] ;then
          echo cd ${i}
          cd ${i}
          if [ -e "setup.sh" ];then
              echo ./setup.sh install
              ./setup.sh install
          fi
          echo cd ..
          cd ..
    fi

done

cd ./nginx_php/nginx/
./setup.sh install
cd ../../

