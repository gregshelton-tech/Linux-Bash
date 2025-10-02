#!/bin/bash
df -h | grep -vE '^Filesystem|tmpfs|cdrom'
