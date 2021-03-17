CREATE TABLE IF NOT EXISTS access (
    RequestId	    	   String,
    ClientHost	    	   String,
    DownstreamStatus	   Nullable(Int64),
    Duration		   Int64,
    OriginDuration	   Int64,
    OriginStatus	   Int64,
    OriginContentSize	   Int64,
    Overhead		   Int64,
    RequestContentSize	   Int64,
    RequestHost		   String,
    RequestMethod	   String,
    RequestPath		   String,
    RequestProtocol	   String,
    RequestScheme	   String,
    RetryAttempts	   Int64,
    StartUTC		   DateTime,
    OriginContentType	   String,
    RequestUserAgent	   String,
    GzipRatio		   Nullable(Float32),
    RouterName		   Nullable(String),
    ServiceAddr		   Nullable(String)
)
    ENGINE = MergeTree()
    PRIMARY KEY RequestId
    TTL StartUTC + INTERVAL 31 DAY;
