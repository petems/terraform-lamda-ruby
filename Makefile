.PHONY: bundle_install
bundle_install:
	@echo "==> Bundling Required Gems"
	@docker run \
		-v $(CURDIR):$(CURDIR) \
		-w $(CURDIR) -i -t \
		lambci/lambda:build-ruby2.5 \
		bundle install --deployment
	@echo "==> Done"

.PHONY: zip_function
zip_function: bundle_install
	@echo "==> Zipping code for Function"
	@zip build.zip * -r -x .git/\* \*.sh specs/\* tests/\* \*.zip
	@echo "==> Done - File created as build.zip"
