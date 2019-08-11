build:
	gem build coverage-badge.gemspec

install: build
	gem install ./coverage-badge-0.1.0.gem
