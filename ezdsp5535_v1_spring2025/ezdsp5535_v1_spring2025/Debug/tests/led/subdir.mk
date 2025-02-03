################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/led/led_test.c \
../tests/led/main.c 

OBJS += \
./tests/led/led_test.o \
./tests/led/main.o 

C_DEPS += \
./tests/led/led_test.d \
./tests/led/main.d 


# Each subdirectory must supply rules for building sources it contributes
tests/led/%.o: ../tests/led/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


