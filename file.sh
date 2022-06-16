echo "please insert Domain Name"
read domain
sublist3r -d $domain > report.txt
echo "Following is the Sub Domain list"
cat result.txt
input="/home/kali/report.txt"
while IFS=  read -r path
do
nslookup $path > /home/kali/SubDResolved.txt
done < "$input"
echo "The Resolved Sub Domains are"
cat SubDResolved.txt
