################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/lcd-osd9616/main.c \
../tests/lcd-osd9616/oled_test.c 

OBJS += \
./tests/lcd-osd9616/main.o \
./tests/lcd-osd9616/oled_test.o 

C_DEPS += \
./tests/lcd-osd9616/main.d \
./tests/lcd-osd9616/oled_test.d 


# Each subdirectory must supply rules for building sources it contributes
tests/lcd-osd9616/%.o: ../tests/lcd-osd9616/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


