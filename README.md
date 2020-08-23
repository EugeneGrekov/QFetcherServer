


## Build Docker
docker build -t grekove/qfetcher .
## Run docker
docker run -p 3000:3000 grekove/qfetcher

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

