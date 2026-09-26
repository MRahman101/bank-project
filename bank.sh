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
      read -p "Enter deposit amount: " amount
      balance=$((balance + amount))
      echo "Deposited $amount. New Balance: $balance"
      ;;
    2)
      read -p "Enter withdraw amount: " amount
      if [ $amount -le $balance ]; then
        balance=$((balance - amount))
        echo "Withdrew $amount. New Balance: $balance"
      else
        echo "Insufficient funds"
      fi
      ;;
    3)
      echo "Current Balance: $balance"
      ;;
    4)
      echo "Goodbye"
      exit 0
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done
