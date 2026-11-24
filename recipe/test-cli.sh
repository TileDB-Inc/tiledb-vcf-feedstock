# https://github.com/TileDB-Inc/TileDB-VCF#quick-start

OUTDIR=/tmp/tiledbvcf/
mkdir -p "$OUTDIR"

tiledbvcf export \
  --uri s3://tiledb-inc-demo-data/tiledbvcf-arrays/v4/vcf-samples-20 \
  --tiledb-config vfs.s3.region=us-east-1 \
  --regions chr1:1-100000 \
  --sample-names v2-usVwJUmo,v2-WpXCYApL \
  --output-format z \
  --output-dir "$OUTDIR"
