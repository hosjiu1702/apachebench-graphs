# output as png image
	set terminal png size 1024,768 crop

	# save file to benchmark.png
	set output "percentages.csv.png"

	# graph a title
	set title "# Requests: 25 | Concurrency: 25 - lb-pynlp-se-scalable-759637009.ap-southeast-1.elb.amazonaws.com:5000"

	# nicer aspect ratio for image size
	set size 1,0.7

	# y-axis grid
	set grid y

	# x-axis label
	set xlabel "Percentile of Users"

	# y-axis label
	set ylabel "Response time \(ms\)"

  set pointsize 1

	set datafile separator ","

  plot "/home/ubuntu/nlp-benchmark/tool/apachebench-graphs/results/lb-pynlp-se-scalable-759637009.ap-southeast-1.elb.amazonaws.com:5000/2021-02-26-15-47-59/percentages.csv.fixed"  with lines title "lb-pynlp-se-scalable-759637009.ap-southeast-1.elb.amazonaws.com:5000"
