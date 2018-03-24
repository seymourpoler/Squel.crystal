# Start development
- crystal init lib SQUEL
- add to at the end of `shard.yml`
```
development_dependencies:
   minitest:
     github: ysbaddaden/minitest.cr
     version: "0.3.6"
```
- execute in cmd ```shards install```
- run tests, executing in cmd ``` crystal run test/learning_test.cr ```
# squel

port code from https://hiddentao.com/squel/ into Crystal language

## Contributors

- [[Seymour Poler]](https://github.com/seymourpoler)  - creator, maintainer
