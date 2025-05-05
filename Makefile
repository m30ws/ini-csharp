.PHONY: build publish run clean

build:
	dotnet build -o ./build/

run: build
	./build/parizer.exe
	
publish:
	dotnet publish -p:PublishSingleFile=true --self-contained false

clean:
	rm -rf ./obj/
	rm -f ./build/parizer
	rm -f ./build/parizer.dll
	rm -f ./build/parizer.pdb
	rm -f ./build/parizer.deps.json
	rm -f ./build/parizer.runtimeconfig.json	
