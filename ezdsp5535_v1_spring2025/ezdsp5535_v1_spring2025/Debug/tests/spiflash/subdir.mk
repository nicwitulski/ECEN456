################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/spiflash/main.c \
../tests/spiflash/spiflash_test.c 

OBJS += \
./tests/spiflash/main.o \
./tests/spiflash/spiflash_test.o 

C_DEPS += \
./tests/spiflash/main.d \
./tests/spiflash/spiflash_test.d 


# Each subdirectory must supply rules for building sources it contributes
tests/spiflash/%.o: ../tests/spiflash/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


