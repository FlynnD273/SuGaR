param(
	[Parameter()]
	[String]$output
)
& python convert.py -s "$output"
& python gaussian_splatting/train.py -s "$output" --iterations 7000 -m "$output/output"
& python train.py -s "$output" -c "$output/output/" -r "density"
