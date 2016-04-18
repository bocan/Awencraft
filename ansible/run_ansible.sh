#!/bin/bash -e

HOSTS_SUBSET=all

if [ "$1" != "" ] ; then
  HOSTS_SUBSET="$1"
fi

header() {
  echo "================================================================================"
  echo $@ | sed  -e :a -e 's/^.\{1,77\}$/ & /;ta'
  echo "================================================================================"

}

#. venv/bin/activate
#source ~/.secrets/my_aws_variables.sh

header "Run ansible"
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook minecraft.yml -u ubuntu --tags "${HOSTS_SUBSET}"
