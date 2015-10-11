Benchmark various web mvc frameworks


## Pre Requisites

* Install [wrk](https://github.com/wg/wrk)
* Install postgres (Used for benchmarking involving db)
* Install Pre Requisites as per the steps in Readme.md for the frameowrk you would want to benchmark


## Starting Server

* cd to subfolder containing site for frameowrk you would want to benchmark
* Run `sh start_server_prod_mode.sh`


## Test Cases & Example Benchmark Commands

1. GET request to render a template with stubbed list of entries

		wrk -t1 -c1000 -d30s http://localhost:8001/polls/stubbed/

2. GET request to render a template with list of entries fetched from database

		wrk -t1 -c1000 -d30s http://localhost:8001/polls/