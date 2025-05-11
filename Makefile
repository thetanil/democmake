.ONESHELL: 

build: test
	@echo "Building the CLI..."
	cmake --build /workspaces/democmake/build --target hello-cli
	@echo "CLI built successfully."

clean:
	@echo "Cleaning up..."
	rm -rf /workspaces/democmake/build
	@echo "Cleaned up successfully."

lint:
	@echo "Running linting..."
	@cd /workspaces/democmake && find src -name "*.cpp" -exec clang-tidy {} -- -std=c++17 \;
	@echo "Linting completed successfully."

test: lint
	@mkdir -p /workspaces/democmake/build 
	@cmake -S /workspaces/democmake -B /workspaces/democmake/build
	@cmake --build /workspaces/democmake/build
	@cd /workspaces/democmake/build && ctest -C Debug --output-on-failure
	@echo "Test completed successfully."
