module github.com/josejuanmontiel/go_monogrepo/packages/second_app

go 1.17

replace (
	github.com/josejuanmontiel/go_monogrepo/packages/main_app/router => ../main_app/router
	github.com/josejuanmontiel/go_monogrepo/packages/proto_build => ../proto_build
	github.com/josejuanmontiel/go_monogrepo/packages/shared/handlers/health => ../shared/handlers/health
)

require (
	github.com/josejuanmontiel/go_monogrepo/packages/main_app/router v0.0.1
	github.com/josejuanmontiel/go_monogrepo/packages/proto_build v0.0.1
	google.golang.org/grpc v1.43.0
)

require (
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/gin-gonic/gin v1.7.7 // indirect
	github.com/go-playground/locales v0.13.0 // indirect
	github.com/go-playground/universal-translator v0.17.0 // indirect
	github.com/go-playground/validator/v10 v10.4.1 // indirect
	github.com/golang/protobuf v1.5.0 // indirect
	github.com/josejuanmontiel/go_monogrepo/packages/shared/handlers/health v0.0.1 // indirect
	github.com/json-iterator/go v1.1.9 // indirect
	github.com/leodido/go-urn v1.2.0 // indirect
	github.com/mattn/go-isatty v0.0.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421 // indirect
	github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742 // indirect
	github.com/ugorji/go/codec v1.1.7 // indirect
	golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9 // indirect
	golang.org/x/net v0.0.0-20200822124328-c89045814202 // indirect
	golang.org/x/sys v0.0.0-20210423082822-04245dca01da // indirect
	golang.org/x/text v0.3.2 // indirect
	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
)
