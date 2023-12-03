.DEFAULT_GOAL := help
.PHONY: help
help: ## helpを表示
	@echo '  see: https://github.com/432ats/openai_sandbox'
	@echo ''
	@grep -E '^[%/0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-22s\033[0m %s\n", $$1, $$2}'
	@echo ''


go_to_container: ## containerに侵入
	@docker compose exec python3 bash

jupyter: ## jupyterを開く
	@docker run --env-file .env -v $$PWD/.:/root/sandbox -w /root/sandbox -it --rm -p 8888:8888 openai_sandbox-python3 jupyter-lab --ip 0.0.0.0 --allow-root -b localhost

