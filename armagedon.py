import requests, random, datetime, sys, time, os

from termcolor import colored
from modules import logo

def russia():
    os.system("cd bombers && python3 bomber.py")

def dmetr():
    print(logo.dmetr)
    input()
    main()

def update():
    os.system("cd modules && python3 update.py")

def exit():
    os.system("clear")
    print('Goodby :(')
    sys.exit()

def main():
    os.system('clear')
    print(logo.banner)
    print(logo.menu)
    num_menu = input("armagedon> ")
    if num_menu == "":
       main()
    if num_menu == "1":
        russia()
    if num_menu == "3":
        dmetr()
    if num_menu == "2":
        update()
    if num_menu == "4":
        exit()
main()
