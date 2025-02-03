################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/sd/main.c \
../tests/sd/sd_test.c 

OBJS += \
./tests/sd/main.o \
./tests/sd/sd_test.o 

C_DEPS += \
./tests/sd/main.d \
./tests/sd/sd_test.d 


# Each subdirectory must supply rules for building sources it contributes
tests/sd/%.o: ../tests/sd/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


