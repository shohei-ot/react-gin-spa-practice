.PHONY: build run clean frontend-build

BINARY_NAME=react-gin-spa-practice
BUILD_DIR=./bin
MAIN_FILES=main.go prepare.go
FRONTEND_DIR=./frontend

# Default port
PORT?=8080

frontend-build: ## Build the frontend
	cd $(FRONTEND_DIR) && npm install && npm run build

build: frontend-build ## Build the frontend and Go binary
	@mkdir -p $(BUILD_DIR)
	go build -o $(BUILD_DIR)/$(BINARY_NAME) $(MAIN_FILES)

run: build ## Build and run the server (use PORT=xxxx to specify port)
	$(BUILD_DIR)/$(BINARY_NAME) -port $(PORT)

clean: ## Remove build artifacts
	rm -rf $(BUILD_DIR)
	rm -rf $(FRONTEND_DIR)/dist
