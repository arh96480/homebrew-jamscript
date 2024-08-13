# JamScript

**JamScript** is a jam-themed esoteric programming language interpreter. It allows you to write and execute programs using jam-related terminology.

## Features

- Simple syntax inspired by jam-making processes.
- Easy to learn and use.
- Supports basic arithmetic operations.

## Installation

You can install JamScript via Homebrew:

```sh
brew tap arh96480/homebrew-jamscript
brew install jamscript
```

Alternatively, you can clone this repository and run the interpreter directly:

```sh
git clone https://github.com/arh96480/homebrew-jamscript.git
cd homebrew-jamscript
python3 jamscript.py <your_script.jam>
```

## Usage

Create a `.jam` file with your JamScript code and run it using the `jamscript` command.

### Example 1: Basic Counter

Save the following code in a file named `counter.jam`:

```jam
JAR counter 1
BOIL counter
```

Run the script:

```sh
jamscript counter.jam
```

Output:

```
1
```

### Example 2: Increment Counter

Save the following code in a file named `increment.jam`:

```jam
JAR counter 1
STIR counter 5
BOIL counter
```

Run the script:

```sh
jamscript increment.jam
```

Output:

```
6
```

### Example 3: Decrement Counter

Save the following code in a file named `decrement.jam`:

```jam
JAR counter 10
SPOON counter 3
BOIL counter
```

Run the script:

```sh
jamscript decrement.jam
```

Output:

```
7
```

## Commands

- `JAR variable value`: Initialize a variable with a value.
- `STIR variable value`: Add a value to the variable.
- `SPOON variable value`: Subtract a value from the variable.
- `BOIL variable`: Print the value of the variable.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---