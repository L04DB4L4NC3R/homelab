#!/bin/bash

ansible -i ./inventory/hosts.ini rpi -m ping
