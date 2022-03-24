# cc98_autosign.sh
# Reads username and password from a list
# and sign in for NexusHD.
# required password file format:
# in each line, username:password (separated by colon and nothing else)
# ended with an empty line.
pwfile="cc98_password.txt"
while IFS=: read -r username password
do
    # printf 'Username: %s password: %s\n' "$username" "$password"
    echo "$username" "$password"
    ./cc98_curl.sh $username $password
done <"$pwfile"