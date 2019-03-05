#Контроллер, установленный на плате. Может быть другим, например atmega328
# DEVICE     = atmega168
DEVICE     = atmega2560

#Тактовая частота 16 МГц
CLOCK      = 16000000

#Команда запуска avrdude. Ее нужно скопировать из Arduino IDE.
AVRDUDE = sudo avrdude -v -c wiring -P `ls /dev/ttyA*` -p $(DEVICE) -b115200 -D
# //bin/avrdude -C//etc/avrdude.conf -v -patmega2560 -cwiring -P/dev/ttyACM0 -b115200 -D -Uflash:w:/tmp/arduino_build_439882/sketch_mar05a.ino.hex:i

OBJECTS    = freqmeter.o

COMPILE = avr-gcc -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE)

all:	freqmeter.hex

.c.o:
	$(COMPILE) -c $< -o $@

.S.o:
	$(COMPILE) -x assembler-with-cpp -c $< -o $@

.c.s:
	$(COMPILE) -S $< -o $@

flash:	all
	$(AVRDUDE) -U flash:w:freqmeter.hex:i

readflash:
	$(AVRDUDE) -U flash:r:read.hex:i

clean:
	rm -f freqmeter.hex freqmeter.elf $(OBJECTS)

freqmeter.elf: $(OBJECTS)
	$(COMPILE) -o freqmeter.elf $(OBJECTS)

freqmeter.hex: freqmeter.elf
	rm -f freqmeter.hex
	avr-objcopy -j .text -j .data -O ihex freqmeter.elf freqmeter.hex
	avr-size --format=avr --mcu=$(DEVICE) freqmeter.elf
