#!/bin/bash
# SPDX-License-Identifier: EPL-1.0
##############################################################################
# Copyright (c) 2018 The Linux Foundation and others.
#
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
##############################################################################

# If running in Jenkins we need to symlink the workspace so that
# ansible can pick up the role.
if [ ! -z "$JENKINS_URL" ]; then
    ln -sf "$WORKSPACE" ../puppet-install
fi

molecule test --destroy=always
