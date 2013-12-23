I represent a point in UTC time as defined by ISO 8601. I have zero duration.


My implementation uses three SmallIntegers and a Duration:
julianDayNumber		- julian day number (starting at midnight UTC rather than noon GMT).
seconds	- number of seconds since midnight UTC. Always positive, between 0 and 86399.
nanos	- the number of nanoseconds since the second. ALways positive, between 0 and 999999999.

offset	- duration from UTC.

The offset is used to print the date and time in a local time zone, but the date and time are handled in UTC internally.

The nanosecond attribute is almost always zero but it defined for full ISO compliance and is suitable for timestamping.
