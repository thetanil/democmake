# hello-cli/hello-cli/README.md

# Hello CLI

This is a simple command-line interface (CLI) application written in C that prints "Hello, World!" to the console.

## Project Structure

```
hello-cli
├── .devcontainer
│   ├── devcontainer.json
│   └── Dockerfile
├── src
│   ├── CMakeLists.txt
│   └── main.c
├── CMakeLists.txt
└── README.md
```

## Getting Started

To build and run this project, you need to have Docker and CMake installed. The project is set up to be used with a development container.

### Building the Project

1. Open the project in your code editor.
2. If you are using the development container, it will automatically build the project when you open the folder.
3. If you are not using the development container, you can build the project manually by running the following commands in the terminal:

```bash
mkdir build
cd build
cmake ..
make
```

### Running the Application

After building the project, you can run the application with the following command:

```bash
./hello-cli
```

You should see the output:

```
Hello, World!
```

## License

This project is licensed under the MIT License. See the LICENSE file for more details.