RETVAL=`sqlplus -silent / as sysdba <<EOF
SET PAGESIZE 0 FEEDBACK OFF VERIFY OFF HEADING OFF ECHO OFF
SELECT 'Alive' FROM DUAL;
EXIT;
EOF`

if [ "${RETVAL}" = "Alive" ]; then
    exit 0;
else
    exit 1;
fi