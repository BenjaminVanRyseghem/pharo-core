Usage: test [--junit-xml-output] [<package> ...]
	--junit-xml-output    output the test results in a junit compatible format
	<package>             a String matching a package name
	
Examples:
	#Run all the tests in the Tests-Exceptions package
	pharo Pharo.image test Tests-Exceptions
	
	#Run all the tests in packages matching Test-.* and KernelTests
	pharo Pharo.image test "Tests-.*" "KernelTests-.*"
	
	# Run test on a Hudson/Jenkins server
	pharo Pharo.image test --junit-xml-output "Tests-.*" "KernelTests-.*"
	