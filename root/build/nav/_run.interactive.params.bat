call _presetvars.bat

docker run -ti --rm --hostname=NAVSERVER -p 7045-7048:7045-7048 -e "sql_server=sql_ip\sql_instance" -e "sql_db=navdbname" -e "sql_user=user" -e "sql_pwd=pwd" -e "nav_user=navuser" -e "nav_user_pwd=pwd" -e "import_cronus_license=false" -e "config_instance=false" --name %ContainerName% %host%/%ImageName%