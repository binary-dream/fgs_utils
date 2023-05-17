analyze:
	fvm flutter analyze;

build-flutter-docs:
	fvm dart doc;

build-runner-watch:
	@echo "Executing build runner watch";
	fvm flutter pub run build_runner watch --delete-conflicting-outputs;

start-docusaurus:
	cd docusaurus && npm run start;
