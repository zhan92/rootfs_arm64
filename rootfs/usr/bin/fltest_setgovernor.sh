#!/bin/sh

echo $1 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
