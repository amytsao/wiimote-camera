################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../cam_ctrl.c \
../main.c \
../vmodcam_cfg.c 

LD_SRCS += \
../link.ld 

OBJS += \
./cam_ctrl.o \
./main.o \
./vmodcam_cfg.o 

C_DEPS += \
./cam_ctrl.d \
./main.d \
./vmodcam_cfg.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MicroBlaze gcc compiler'
	mb-gcc -Wall -O0 -g3 -I"C:\Users\CS152B\Documents\new\proj\SDK\SDK_Export\workspace\standalone_bsp_0\microblaze_0\include" -c -fmessage-length=0 -I../../standalone_bsp_0/microblaze_0/include -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.b -mno-xl-soft-mul -Wl,--no-relax -ffunction-sections -fdata-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


