################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/uart/main.c \
../tests/uart/uart_test.c 

OBJS += \
./tests/uart/main.o \
./tests/uart/uart_test.o 

C_DEPS += \
./tests/uart/main.d \
./tests/uart/uart_test.d 


# Each subdirectory must supply rules for building sources it contributes
tests/uart/%.o: ../tests/uart/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


