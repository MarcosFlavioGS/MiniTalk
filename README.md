# minitalk 42

### A simple program that demonstrates communication between two processes.

###

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.
Prerequisites

    GCC compiler

## Installing

Clone the repository and navigate to the project directory:
```sh
git clone https://github.com/username/minitalk-42.git
cd minitalk-42
```
Compile the program using the *makefile*:

*make*

This will create the executable files server and client.

## Running the program

Start the server in one terminal window:
```sh
./server
```
The Server will inform its PID.
Start the client in another terminal window, it will need two parameters: *Server PID* and the String to be printed:
```sh
./client <Server PID> <String to pass>
```
The server will then print the string passed to client as parameter
