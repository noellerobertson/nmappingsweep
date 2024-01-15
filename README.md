# nmappingsweep

<b>This process of this Bash script is as follows:</b>
1. Checks to see if nmap is installed.
2. If so, proceeds with nmap ping sweep.
3. If not, attempts to install nmap and if successful proceeds with the ping sweep.
5. Displays the open ports of the target IP addresses on the terminal, and also saves the results to a file.

<b>Considerations:</b>
<br>Make sure the package manager is correct for the distribution you are using. If you want to scan a specific range of ports, edit the nmap line at the end with your target range (ex. -p 1-1000).
