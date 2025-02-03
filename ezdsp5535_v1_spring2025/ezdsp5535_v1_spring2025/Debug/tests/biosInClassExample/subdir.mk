################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/biosInClassExample/hello.c 

OBJS += \
./tests/biosInClassExample/hello.o 

C_DEPS += \
./tests/biosInClassExample/hello.d 


# Each subdirectory must supply rules for building sources it contributes
tests/biosInClassExample/%.o: ../tests/biosInClassExample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


