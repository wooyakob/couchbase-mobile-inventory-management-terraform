#!/bin/bash

# AA-Store Data
cbimport json --format list --cluster "couchbases://cb.9zcvwd-tlr-ns9sj.cloud.couchbase.com" --username simple-retail --password 'r2IUI-lY16idwTO4$a!H1-Xm' --bucket "supermarket" --scope-collection-exp "AA-Store.inventory" --dataset 'file://./aa_store_inventory.json' --generate-key "%id%"
cbimport json --format list --cluster "couchbases://cb.9zcvwd-tlr-ns9sj.cloud.couchbase.com" --username simple-retail --password 'r2IUI-lY16idwTO4$a!H1-Xm' --bucket "supermarket" --scope-collection-exp "AA-Store.profile" --dataset 'file://./aa-store-01-profile.json' --generate-key "%id%"

# NYC-Store Data
cbimport json --format list --cluster "couchbases://cb.9zcvwd-tlr-ns9sj.cloud.couchbase.com" --username simple-retail --password 'r2IUI-lY16idwTO4$a!H1-Xm' --bucket "supermarket" --scope-collection-exp "NYC-Store.inventory" --dataset 'file://./nyc_store_inventory.json' --generate-key "%id%"
cbimport json --format list --cluster "couchbases://cb.9zcvwd-tlr-ns9sj.cloud.couchbase.com" --username simple-retail --password 'r2IUI-lY16idwTO4$a!H1-Xm' --bucket "supermarket" --scope-collection-exp "NYC-Store.profile" --dataset 'file://./nyc-store-01-profile.json' --generate-key "%id%"
