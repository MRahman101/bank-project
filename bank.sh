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

      if [[ $amount =~ ^[0-9]+([.][0-9]+)?$ ]] && (( $(echo "$amount > 0" | bc -l) )); then
        balance=$(echo "$balance + $amount" | bc)
        echo "Deposit successful."
        echo "Your new balance: $balance"
      else
        echo "Invalid deposit amount."
      fi
      ;;

    2)
      read -p "Enter withdrawal amount: " amount

      if [[ $amount =~ ^[0-9]+([.][0-9]+)?$ ]] && (( $(echo "$amount > 0" | bc -l) )); then
        if (( $(echo "$amount <= $balance" | bc -l) )); then
          balance=$(echo "$balance - $amount" | bc)
          echo "Withdrawal successful."
          echo "Your new balance: $balance"
        else
          echo "Insufficient funds."
        fi
      else
        echo "Invalid withdrawal amount."
      fi
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
