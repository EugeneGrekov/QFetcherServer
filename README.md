# Q-Fetcher
Fetch academic questions, which are provided in several data formats. results required to be processed and returned to fetcher

## Usage



## Build Docker
docker build -t grekove/qfetcher .
## Run docker
Regular run have always specify Google Secret Word (take it from e-mail)

: 
```
docker run -p 3000:3000 -e SECRET=__YOUR_GOOGLE_KEY__ grekove/qfetcher
```
Run with specified timeout
```
docker run -p 3000:3000 -e SECRET=__YOUR_GOOGLE_KEY__ -e TIMEOUT=1000 grekove/qfetcher
```


## Run request:

```
curl -X POST localhost:3000/api/v1/fetch \
-H 'Accept: application/json' \
-H 'Content-Type: application/json' \
-d '{
      "manifest": "https://raw.githubusercontent.com/EugeneGrekov/QFetcherServer/master/test-files/manifest_w2.dat",
      "filter": ["csv","png", "json"],
      "order":  ["value", "source"] 
    }' 
```

