CC = arm-none-eabi-gcc
CMSIS_CORE   = third_party/CMSIS/Include
CMSIS_DEVICE = third_party/CMSIS/Device/ST/STM32F1xx/Include

CFLAGS  += -I$(CMSIS_CORE) -I$(CMSIS_DEVICE) -Iinc
CFLAGS  += -DSTM32F103xB

COMP_FLAGS = -c -mthumb -mcpu=cortex-m3 -std=gnu11 $(CFLAGS)
LD_FLAGS = -nostdlib -T linker/linker_script.ld -Wl,-Map=project.map

# $@ = target
# $^ = all prerequisites of target
# target : prereq

final : final_exec.elf

main.o : main.c
	$(CC) $^ $(COMP_FLAGS) -o $@

startup.o : startup/startup.c
	$(CC) $^ $(COMP_FLAGS) -o $@

final_exec.elf : main.o startup.o
	$(CC) $(LD_FLAGS) $^ -o $@

load :
	openocd -f board/st_nucleo_f0.cfg 

clean:
	rm -rf -f *.o *.elf *.map