# thai-wordnet-db

thai-wordnet-db is a set of scripts that collect and combine  Wordnet 3.0 (in SQLite3) and Thai Wordnet together.

## Prerequisite

* Bash
* wget
* GNU Awk
* sqlite3

## Usage


### Build DB
````
./build.sh
````

### Example
````
$ sqlite3 wn30.db
sqlite> SELECT x.lemma, x.synsetid, t.word FROM wordsXsenses x INNER JOIN thai t ON x.synsetid = t.synsetid LIMIT 10000,10;
backhand shot|100566690|การตีลูกหลังมือ
backhand shot|100566690|ลูกหลังมือ
backhand stroke|100566690|การตีลูกหลังมือ
backhand stroke|100566690|ลูกหลังมือ
backhander|100133160|การตบด้วยหลังมือ
backhander|100133160|การแบ็กแฮนด์
backhoe|102769290|แบ็กโฮ
backing|101213886|การสนับสนุน
backing|101213886|การอุปถัมภ์
backing|101213886|ความช่วยเหลือ
````
### Download

Pre-built: http://file.veer66.rocks/nlp/thai-wordnet-db-20180107.tar.gz
