#!/bin/bash

# Function to add task to the list
function add_task {
    echo "Enter the task:"
    read task
    echo "$task" >> tasks.txt
    echo "Task added successfully!"
}

# Function to list all tasks in the list
function list_tasks {
    if [ ! -s tasks.txt ]; then
        echo "No tasks found"
    else
        cat -n tasks.txt
    fi
}

# Function to remove a task from the list
function remove_task {
    list_tasks
    echo "Enter the number of the task to be removed:"
    read task_number
    sed -i "${task_number}d" tasks.txt
    echo "Task removed successfully!"
}

# Main loop
while true; do
    # Function to add two numbers
function add() {
    sum=$(($1 + $2))
    echo "Sum: $sum"
}

# Function to subtract two numbers
function subtract() {
    diff=$(($1 - $2))
    echo "Difference: $diff"
}

# Function to multiply two numbers
function multiply() {
    product=$(($1 * $2))
    echo "Product: $product"
}

# Function to divide two numbers
function divide() {
    quotient=$(($1 / $2))
    echo "Quotient: $quotient"
}

# Main program loop
while true; do
    echo "Please enter an operation: (add, subtract, multiply, divide)"
    read operation

    # Validate operation
    if [[ "$operation" != "add" && "$operation" != "subtract" && 
"$operation" != "multiply" && "$operation" != "divide" ]]; then
        echo "Invalid operation."
        continue
    fi

    echo "Please enter two numbers:"
    read num1
    read num2

    # Validate input
    if ! [[ "$num1" =~ ^[0-9]+$ ]]; then
        echo "Invalid input: $num1"
        continue
    fi

    if ! [[ "$num2" =~ ^[0-9]+$ ]]; then
        echo "Invalid input: $num2"
        continue
    fi

    # Perform operation
    case "$operation" in
        "add") add $num1 $num2 ;;
        "subtract") subtract $num1 $num2 ;;
        "multiply") multiply $num1 $num2 ;;
        "divide") divide $num1 $num2 ;;
    esac

    # Prompt user to continue or exit
    echo "Do you want to perform another operation? (y/n)"
    read continue

    if [[ "$continue" != "y" ]]; then
        break
    fi
done

