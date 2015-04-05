.MEMORYMAP
	SLOTSIZE $8000
	DEFAULTSLOT 0
	SLOT 0 $8000
	SLOTSIZE $10000
	SLOT 1 $0000
.ENDME

.SNESHEADER
	NAME "Super Metroid        "
	SLOWROM
	LOROM
	CARTRIDGETYPE $35
	ROMSIZE $0C
	SRAMSIZE 3
	COUNTRY 1
	LICENSEECODE 0
	VERSION 0
.ENDSNES
.ROMBANKMAP
	BANKSTOTAL 256
	BANKSIZE $8000
	BANKS $40
	BANKSIZE 1 ;Well it gets copied together
	BANKS $40
	BANKSIZE $8000
	BANKS $40
	BANKSIZE $10000
	BANKS $40
.ENDRO ;I am a cheater
.SNESNATIVEVECTOR
	COP EmptyHandler
	BRK EmptyHandler
	ABORT EmptyHandler
	NMI NMI
	IRQ IRQ
.ENDNATIVEVECTOR
.SNESEMUVECTOR
	COP EmptyHandler
	ABORT EmptyHandler
	NMI EmptyHandler
	RESET Reset
	IRQBRK EmptyHandler
.ENDEMUVECTOR
.BANK 0 SLOT 0
.SECTION "EmptyVectors"
EmptyHandler:
	jml EmptyHandler ;Forever
.ENDS
.EMPTYFILL $FF