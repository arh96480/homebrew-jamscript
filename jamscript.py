#!/usr/bin/env python3
import sys


def interpret_jamscript(code):
    lines = code.strip().split("\n")
    variables = {}
    ip = 0

    while ip < len(lines):
        line = lines[ip].strip()
        if line.startswith("#") or line == "":
            ip += 1
            continue

        parts = line.split()
        command = parts[0]

        if command == "SPREAD" or command == "JUMP":
            ip += int(parts[1])
        elif command == "STIR" or command == "BACK":
            ip -= int(parts[1])
        elif command == "BOIL" or command == "PRINT":
            val = parts[1]
            if val in variables:
                print(variables[val])
            else:
                print(val.strip('"'))
            ip += 1
        elif command == "JAR" or command == "SET":
            variables[parts[1]] = int(parts[2])
            ip += 1
        elif command == "SWEETEN" or command == "ADD":
            variables[parts[1]] += int(parts[2])
            ip += 1
        elif command == "SOUR" or command == "SUB":
            variables[parts[1]] -= int(parts[2])
            ip += 1
        elif command == "TASTE" or command == "IF":
            var = parts[1]
            val = int(parts[2])
            if variables[var] != val:
                ip += 1
            ip += 1
        elif command == "PRESERVE":
            # This is a placeholder for future extension
            ip += 1
        else:
            raise ValueError(f"Unknown command: {command}")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: jamscript <file>")
        sys.exit(1)

    with open(sys.argv[1], "r") as file:
        code = file.read()

    interpret_jamscript(code)
