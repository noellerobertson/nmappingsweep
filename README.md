<h1>Nmap Ping Sweep</h1>

A script that installs nmap, conducts a ping sweep and sends results to a file.

<h1>This process of this Bash script is as follows:</h1>
1. Checks to see if nmap is installed.
2. If so, proceeds with nmap ping sweep.
3. If not, attempts to install nmap and if successful proceeds with the ping sweep.
5. Displays the open ports of the target IP addresses on the terminal, and also saves the results to a file.

<h1>Considerations:</h1>
<br>Make sure the package manager is correct for the distribution you are using. If you want to scan a specific range of ports, edit the nmap line at the end with your target range (ex. -p 1-1000).
