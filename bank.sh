#!/bin/bash

balance=1000

echo "Welcome to Simple Bank"

while true; do
  echo "-------------------------"
  echo "1. Deposit"
  echo "2. Withdraw"
  echo "3. Check Balance"
  echo "4. Exit"
  echo "-------------------------"
  read -p "Choose an option: " option

  case $option in
    1)
      echo "Deposit section"
      ;;
    2)
      echo "Withdraw section"
      ;;
    3)
      echo "Your current balance: $balance"
      ;;
    4)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid option — please choose 1–4"
      ;;
  esac
done
