# Parameters
- onlynodes
  - see if edges are a big problem
- db.index
  - makes a big difference from above X nodes
  - must be enabled for...
- productsperorder
  - low -> single edge from Test
  - high -> multiple edges from one Test
  - does structure make a big difference?
- componentsperproduct
  - same as productsperorder but on another level
- testparametercount
  - same as testparametercount but on another level
- fieldlength (node size)
  - does this affect speed a lot?
  - at which size are the databases reaching their end
    - might be because of RAM limit?
      - check if size corresponds to RAM limit
        - remove RAM-module to run with less RAM

---
# measurements
- Average operation time
  - node Time
  - edge Time
- Time for whole workload
- Database Size
- Operations/second
- JVM
  - Memory usage
  - System load


---
# Insert

## RAM
- load with Amount of RAM (use only 8 GB)
- run
  - Insert
  - insert and operations

## Production workloads
- plate
  - 1-64 products
    - 1-128 components
      - 1-128 tests
        - test parameter value size is 50B
- one plate every 3 Minutes 24/7 -> 480 plates/day

## Varying data size
- 10B
- 100B
- 1KB
- 10KB
- 100KB
- 1MB

---
# Insert and other operations

## Responsiveness workloads
- Use node amount which takes sufficient time and than one read/scan operation in the middle of the run, see how results change
- Scan operation is implemented as depth-first-search

### X nodes with random read
- read random component in the middle of the
