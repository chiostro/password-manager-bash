#!/data/data/com.termux/files/usr/bin/bash
gpgconf --kill gpg-agent
gpgconf --reload gpg-agent
FILE="password_store"

# Funzione per aggiungere una password
add_password() {
  read -p "Service name: " service
  read -sp "Password for $service: " password
  echo -n "$password"| gpg -c --yes --pinentry-mode loopback  > "$FILE.$service.gpg"
  echo "Password for $service saved!"
  echo " "
}

# Funzione per recuperare una password
del_password() {
  read -p "Service name: " service
  rm -f "$FILE.$service.gpg"
  echo
}
get_password() {
  read -p "Service name: " service
  echo
  echo Paasword:
  gpg --quiet --pinentry-mode loopback  --decrypt "$FILE.$service.gpg"
  echo -e "\n"
}

# Funzione per visualizzare tutte le password salvate
list_passwords() {
  echo "List of saved services Password:"
  echo
  ls *.gpg
  echo
}

# Menu interattivo
PS3="Menu: "
options=("Save password" "Retrieve password" "List all" "Eliminate" "Quit")

select opt in "${options[@]}"
do
  case $opt in
    "Save password")
      add_password
      ;;
    "Retrieve password")
      get_password
      ;;
    "List all")
      list_passwords
      ;;
    "Eliminate")
      del_password
      ;;
    "Quit")
      break
      ;;
    *) echo "Bad option!" ;;
  esac
done


