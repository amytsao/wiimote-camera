################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
Test.elf.size \

ELFCHECK += \
Test.elf.elfcheck \


# All Target
all: Test.elf secondary-outputs

# Tool invocations
Test.elf: $(OBJS) ../link.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -L"C:\Users\CS152B\Documents\new\proj\SDK\SDK_Export\workspace\standalone_bsp_0\microblaze_0\lib" -Wl,-T -Wl,../link.ld -L../../standalone_bsp_0/microblaze_0/lib -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.b -mno-xl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "Test.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Test.elf.size: Test.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size Test.elf  |tee "Test.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

Test.elf.elfcheck: Test.elf
	@echo 'Invoking: Xilinx ELF Check'
	elfcheck Test.elf -hw ../../proj_hw_platform/system.xml -pe microblaze_0  |tee "Test.elf.elfcheck"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) Test.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
