function report ()
{
(
echo "from: $FROM_"
echo "to: $WHO"
echo "subject: $1"
echo "Content-Type: text/html; charset=utf8"
echo ""
echo "<html><body><font face=Helvetica>
$2
</font></body></html>"
echo "."
echo ""
) | sendmail -f $(echo $FROM | /bin/sed -r 's/.*<//; s/>.*//') -t
#sendmail -f $(echo $FROM | /bin/sed -r 's/.*<//; s/>.*//') -t
#sendmail -f wftitservicesryazan@epam.com -t
}
