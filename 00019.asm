;test inc,add,adc   inc 自增是不会影响cf位的,其他位都会影响
include io32.inc
.data
	bvar byte 07fh
.code
	start:inc bvar
	exit 0
	end start
		