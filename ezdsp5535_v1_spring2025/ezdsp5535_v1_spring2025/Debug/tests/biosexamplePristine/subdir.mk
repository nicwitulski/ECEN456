################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/biosexamplePristine/aic3204.c \
../tests/biosexamplePristine/main.c 

OBJS += \
./tests/biosexamplePristine/aic3204.o \
./tests/biosexamplePristine/main.o 

C_DEPS += \
./tests/biosexamplePristine/aic3204.d \
./tests/biosexamplePristine/main.d 


# Each subdirectory must supply rules for building sources it contributes
tests/biosexamplePristine/%.o: ../tests/biosexamplePristine/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


