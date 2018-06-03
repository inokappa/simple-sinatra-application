# simple-sinatra-application

## run

```sh
APP_ENV=development bundle exec ruby app.rb -o 0.0.0.0 &
```

## docker

```sh
docker build -t simple-sinatra-application .
docker run -d -p 80:4567 simple-sinatra-application
```
