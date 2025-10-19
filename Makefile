.PHONY: build run clean

BINARY_NAME=react-gin-spa-practice
BUILD_DIR=./bin
MAIN_FILES=main.go prepare.go

# Default port
PORT?=8080

build: ## Build the Go binary
	@mkdir -p $(BUILD_DIR)
	go build -o $(BUILD_DIR)/$(BINARY_NAME) $(MAIN_FILES)

run: build ## Build and run the server (use PORT=xxxx to specify port)
	$(BUILD_DIR)/$(BINARY_NAME) -port $(PORT)

clean: ## Remove build artifacts
	rm -rf $(BUILD_DIR)
