brew tap go-swagger/go-swagger  
brew install go-swagger

protoc --swagger_out=. 生成对应的swagger.json文件

swagger serve -F=swagger proto/hello/hello.swagger.json  本地运行SwaggerUI
