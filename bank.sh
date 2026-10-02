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
#!/bin/bash

balance=1000
total_deposit=0
total_withdraw=0

echo "Welcome to Simple Bank"

while true; do

  echo "-------------------------"
  echo "1. Deposit"
  echo "2. Withdraw"
  echo "3. Check Balance"
  echo "4. Exit"
  echo "5. Statement"
  echo "-------------------------"

  read -p "Choose an option: " option

  case $option in

    1)
      read -p "Enter deposit amount: " amount

      if [[ $amount =~ ^[0-9]+([.][0-9]+)?$ ]] && (( $(echo "$amount > 0" | bc -l) )); then
        balance=$(echo "$balance + $amount" | bc)
        total_deposit=$(echo "$total_deposit + $amount" | bc)

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
          total_withdraw=$(echo "$total_withdraw + $amount" | bc)

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

    5)
      echo "-------------------------"
      echo "      Account Statement"
      echo "-------------------------"
      echo "Total Deposit   : $total_deposit"
      echo "Total Withdraw  : $total_withdraw"
      echo "Current Amount  : $balance"
      echo "-------------------------"
      ;;

    *)
      echo "Invalid option — please choose 1–5"
      ;;

  esac

done