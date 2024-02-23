analyze:
	fvm flutter analyze;

build-flutter-docs:
	fvm dart doc;

build-runner:
	fvm flutter pub run build_runner build --delete-conflicting-outputs;

build-runner-watch:
	fvm flutter pub run build_runner watch --delete-conflicting-outputs;

start-docusaurus:
	cd docusaurus && npm run start;
