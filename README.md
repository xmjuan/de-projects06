# de-projects06
##### requirements:
- create config data source and watermark table (a combination of data source and watermark table)
- selectively run full load or incremental load pipeline
-> look up meta data </p>
-> if isIncremental col = 0, run pipeline full load </p>
-> if isIncremental col = 1, run pipeline incremental load </p>
- full load
-> look up meta data, filter on isIncremental = 0, for each metadata, copy to raw -> update watermark table -> insert into adf log table
- incremental load
-> look up meta data, filter on isIncremental = 1, for each metadata, look up new watermark, look up existing watermark, copy data > existing watermark and <= new watermark, update watermark table -> insert into adf log table
  
