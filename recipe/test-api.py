# https://github.com/TileDB-Inc/TileDB-VCF#quick-start

import tiledbvcf

ds = tiledbvcf.Dataset(
  uri = "s3://tiledb-inc-demo-data/tiledbvcf-arrays/v4/vcf-samples-20",
  mode = "r"
)

x = ds.read(
    attrs = ["sample_name", "pos_start", "fmt_GT"],
    regions = ["chr7:144000320-144008793", "chr11:56490349-56491395"],
    samples = ["v2-tJjMfKyL", "v2-eBAdKwID"]
)

print(x)
