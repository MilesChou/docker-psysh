#!/usr/bin/env bash

generated_warning() {
	cat <<-EOH
		#
		# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
		#
		# PLEASE DO NOT EDIT IT DIRECTLY.
		#
	EOH
}

VERSIONS="
7.0
7.1
7.2
7.3
7.4
"

for version in ${VERSIONS}; do
    mkdir -p ${version}
    generated_warning > ${version}/Dockerfile
    cat Dockerfile.template | sed -e 's!%%PHP_VERSION%%!'"${version}-alpine"'!' >> ${version}/Dockerfile
done
