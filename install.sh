#!/bin/bash

# DESTDIR is your target project's dir
DESTDIR=~/bitbucket/rt-n56u

ROOTDIR=`pwd`

if [ ! -d "$DESTDIR" ] ; then
	echo "Target project directory not exists! Terminate."
	exit 1
fi

copyDict(){
	echo "--------------开始复制汉化文件------------------"
	if [ -d "$ROOTDIR/trunk/user/" ] ; then
		cp -fRv "$ROOTDIR/trunk/user/" "$DESTDIR/trunk/"
	fi
	echo "--------------复制汉化文件结束------------------"
}

copyRouteConfig(){
    echo "--------------开始复制路由器适配文件------------------"
    if [ -d "$ROOTDIR/trunk/configs/" ] ; then
        cp -fRv "$ROOTDIR/trunk/configs/" "$DESTDIR/trunk/"
    fi
    echo "--------------复制路由器适配文件结束------------------"
}

copyRouteConfigAsnewifimini_base(){
    echo "--------------开始设置newifimini_base路由器适配文件------------------"
    if [ -e "$DESTDIR/trunk/.config" ] ; then
        mv -f "$DESTDIR/trunk/.config" "$DESTDIR/trunk/.config.bak."+`date +%y%m%d%H%M`
        cp -fRv "$ROOTDIR/trunk/configs/templates/newifimini_base.config" "$DESTDIR/trunk/.config"
    fi
    echo "--------------设置newifimini_base路由器适配文件结束------------------"
}

copyRouteConfigAsnewifiy1s_base(){
    echo "--------------开始设置newifiy1s_base路由器适配文件------------------"
    if [ -e "$DESTDIR/trunk/.config" ] ; then
        mv -f "$DESTDIR/trunk/.config" "$DESTDIR/trunk/.config.bak."+`date +%y%m%d%H%M`
        cp -fRv "$ROOTDIR/trunk/configs/templates/newifiy1s_base.config" "$DESTDIR/trunk/.config"
    fi
    echo "--------------设置newifiy1s_base路由器适配文件结束------------------"
}

copyRouteConfigAsnewifi_d1_base(){
    echo "--------------开始设置newifi_d1_base路由器适配文件------------------"
    if [ -e "$DESTDIR/trunk/.config" ] ; then
        mv -f "$DESTDIR/trunk/.config" "$DESTDIR/trunk/.config.bak."+`date +%y%m%d%H%M`
        cp -fRv "$ROOTDIR/trunk/configs/templates/newifi_d1_base.config" "$DESTDIR/trunk/.config"
    fi
    echo "--------------设置newifi_d1_base路由器适配文件结束------------------"
}

copyRouteConfigAsnewifi_d1_full(){
    echo "--------------开始设置PSG1218_base路由器适配文件------------------"
    if [ -e "$DESTDIR/trunk/.config" ] ; then
        mv -f "$DESTDIR/trunk/.config" "$DESTDIR/trunk/.config.bak."+`date +%y%m%d%H%M`
        cp -fRv "$ROOTDIR/trunk/configs/templates/newifi_d1_full.config" "$DESTDIR/trunk/.config"
    fi
    echo "--------------设置newifi_d1_full路由器适配文件结束------------------"
}

copyRouteConfigAsnewifi_mini_full(){
    echo "--------------开始设置newifi_mini_full路由器适配文件------------------"
    if [ -e "$DESTDIR/trunk/.config" ] ; then
        mv -f "$DESTDIR/trunk/.config" "$DESTDIR/trunk/.config.bak."+`date +%y%m%d%H%M`
        cp -fRv "$ROOTDIR/trunk/configs/templates/newifi_mini_full.config" "$DESTDIR/trunk/.config"
    fi
    echo "--------------设置newifi_mini_full路由器适配文件结束------------------"
}

copyRouteConfigAsPSG1218_base(){
    echo "--------------开始设置PSG1218_base路由器适配文件------------------"
    if [ -e "$DESTDIR/trunk/.config" ] ; then
        mv -f "$DESTDIR/trunk/.config" "$DESTDIR/trunk/.config.bak."+`date +%y%m%d%H%M`
        cp -fRv "$ROOTDIR/trunk/configs/templates/psg1218_base.config" "$DESTDIR/trunk/.config"
    fi
    echo "--------------设置PSG1218_base路由器适配文件结束------------------"
}

copyRouteConfigAsyk_l1_full(){
    echo "--------------开始设置yk_l1_full路由器适配文件------------------"
    if [ -e "$DESTDIR/trunk/.config" ] ; then
        mv -f "$DESTDIR/trunk/.config" "$DESTDIR/trunk/.config.bak."+`date +%y%m%d%H%M`
        cp -fRv "$ROOTDIR/trunk/configs/templates/yk_l1_full.config" "$DESTDIR/trunk/.config"
    fi
    echo "--------------设置yk_l1_full路由器适配文件结束------------------"
}

while :
do
	echo -e "\n"
    echo "请选择你要执行的操作[1|2|3]:"
    echo "-----------------------------"
    echo " [1] 安装汉化文件"
    echo " [2] 安装路由器适配文件"
    echo " [3] 设置newifimini_base适配文件"
    echo " [4] 设置newifiy1s_base适配文件"
    echo " [5] 设置newifi_d1_base适配文件"
    echo " [6] 设置newifi_d1_full适配文件"
    echo " [7] 设置newifi_mini_full适配文件"
    echo " [8] 设置psg1218_base适配文件"
    echo " [9] 设置yk_l1_full适配文件"
    echo " [10] 退出"
    echo "-----------------------------"
    read option
    case $option in
        1) copyDict
        ;;
        2) copyRouteConfig
        ;;
        3) copyRouteConfigAsnewifimini_base
        ;;
        4) copyRouteConfigAsnewifiy1s_base
        ;;
        5) copyRouteConfigAsnewifi_d1_base
        ;;
        6) copyRouteConfigAsnewifi_d1_full
        ;;
        7) copyRouteConfigAsnewifi_mini_full
        ;;
        8) copyRouteConfigAsPSG1218_base
        ;;
        9) copyRouteConfigAsyk_l1_full
        ;;
        10|q|Q|quit|exit)
            break
        ;;
    esac
done
