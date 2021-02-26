# output as png image
	set terminal png size 1024,768 crop

	# save file to benchmark.png
	set output "values.tsv.png"

	# graph a title
	set title "# Requests: 25 | Concurrency: 25 - lb-pynlp-se-scalable-759637009.ap-southeast-1.elb.amazonaws.com:5000"

	# nicer aspect ratio for image size
	set size 1,0.7

	# y-axis grid
	set grid y

	# x-axis label
	set xlabel "Requests"

	# y-axis label
	set ylabel "Response time \(ms\)"

  set pointsize 1

  #set Loadpath {"/home/ubuntu/nlp-benchmark/tool/apachebench-graphs/results/lb-pynlp-se-scalable-759637009.ap-southeast-1.elb.amazonaws.com:5000/2021-02-26-15-50-04"}
	# plot data from server1.txt and server2.txt using column 9 with smooth sbezier lines
	#plot server1.txt using 9 smooth sbezier with lines title server1:, 	#     server2.txt using 9 smooth sbezier with lines title server2:
  plot "/home/ubuntu/nlp-benchmark/tool/apachebench-graphs/results/lb-pynlp-se-scalable-759637009.ap-southeast-1.elb.amazonaws.com:5000/2021-02-26-15-50-04/values.tsv" using 9 smooth sbezier with lines title "lb-pynlp-se-scalable-759637009.ap-southeast-1.elb.amazonaws.com:5000"
