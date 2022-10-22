develop:
	docker build -t bmi-calculator-dev develop
	docker run -it --rm \
		--name bmi-calculator-dev \
		-v $(PWD):/bmi-calculator \
		bmi-calculator-dev bash
.PHONY: develop

clean:
	rm -rf .dart_tool
	rm -rf build

test: clean
	flutter test packages/bmi/test/
.PHONY: test