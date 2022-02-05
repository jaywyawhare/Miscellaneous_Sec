import nmap

print("Welcome to the automated nmap scanner")
print("Enter target IP address: ")
target = input()
print("Enter 1 to specify ports or 2 to scan all ports: ")
choice = input()
if choice == "1":
    print("Enter port range: ")
    ports = input()
    print("Enter 1 to scan or 2 to exit: ")
    choice = input()
    if choice == "1":
        nmapScan = nmap.PortScanner()
        nmapScan.scan(target, ports)
        print(nmapScan.command_line())
        print(nmapScan.scaninfo())
        print(nmapScan.all_hosts())
        print(nmapScan[target].hostname())
        print(nmapScan[target].state())
        for protocol in nmapScan[target].all_protocols():
            print("Protocol: %s" % protocol)
            lport = nmapScan[target][protocol].keys()
            for port in lport:
                print("port: %s\tstate: %s" % (port, nmapScan[target][protocol][port]['state']))
    elif choice == "2":
        exit()
elif choice == "2":
    print("Enter 1 to scan or 2 to exit: ")
    choice = input()
    if choice == "1":
        nmapScan = nmap.PortScanner()
        nmapScan.scan(target, '22-443')
        print(nmapScan.command_line())
        print(nmapScan.scaninfo())
        print(nmapScan.all_hosts())
        print(nmapScan[target].hostname())
        print(nmapScan[target].state())
        for protocol in nmapScan[target].all_protocols():
            print("Protocol: %s" % protocol)
            lport = nmapScan[target][protocol].keys()
            for port in lport:
                print("port: %s\tstate: %s" % (port, nmapScan[target][protocol][port]['state']))
    elif choice == "2":
        exit()
else:
    print("Invalid input")
    exit()
    print("Thanks for using the automated nmap scanner")
    print("Exiting...")
    exit()






