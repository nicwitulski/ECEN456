################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJ_SRCS += \
../tests/biosexample/Debug/aic3204.obj \
../tests/biosexample/Debug/audioProcessing.obj \
../tests/biosexample/Debug/hellocfg.obj \
../tests/biosexample/Debug/hellocfg_c.obj \
../tests/biosexample/Debug/main.obj 

C_SRCS += \
../tests/biosexample/Debug/hellocfg_c.c 

OBJS += \
./tests/biosexample/Debug/hellocfg_c.o 

C_DEPS += \
./tests/biosexample/Debug/hellocfg_c.d 


# Each subdirectory must supply rules for building sources it contributes
tests/biosexample/Debug/%.o: ../tests/biosexample/Debug/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


