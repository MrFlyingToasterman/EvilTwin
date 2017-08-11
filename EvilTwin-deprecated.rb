puts "[INFO] Setting up Evil Twin"

# Check Root
def checkRoot
 if Process.euid != 0
   # Not running as user root
   puts "[FAIL] Please run this script as root!"
   exit
 end
   puts "[ OK ] Root"
end

puts "[INFO] Checking root"
checkRoot
