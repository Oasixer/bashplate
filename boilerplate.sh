#!/bin/bash

set -e

USAGE="Usage: $(basename $0) [-v version_number] [--no-build] | [--help]

Arguments:
  -h, --help                         show this help message and exit
  -v, --version version              ie. -v 0.7.5
  -b, --no-build                     don't build a new image
"
usage()
{
    printf "$USAGE"
}

version=
no_build=
while [ "$1" != "" ]; do
    case $1 in
        -v | --version )        shift
                                version=$1
                                ;;
        -b | --no-build )       no_build=1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done


if [[ -z "$version" ]]; then
    echo "Error: missing version number, use -v <version number>"
    usage
    exit 1
fi

if [[ "$version" == "1.0.0" ]]; then
    echo "asiodjaosidjaoisjdoi"
fi

if [ -z "$no_build" ]; then
    echo "no-build option not set"
fi
