################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/biosexample/aic3204.c \
../tests/biosexample/audioProcessing.c \
../tests/biosexample/main.c 

OBJS += \
./tests/biosexample/aic3204.o \
./tests/biosexample/audioProcessing.o \
./tests/biosexample/main.o 

C_DEPS += \
./tests/biosexample/aic3204.d \
./tests/biosexample/audioProcessing.d \
./tests/biosexample/main.d 


# Each subdirectory must supply rules for building sources it contributes
tests/biosexample/%.o: ../tests/biosexample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


