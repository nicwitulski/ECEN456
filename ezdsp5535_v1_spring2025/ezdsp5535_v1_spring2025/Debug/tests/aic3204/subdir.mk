################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../tests/aic3204/aic3204_loop_linein.c \
../tests/aic3204/aic3204_test.c \
../tests/aic3204/aic3204_tone_headphone.c \
../tests/aic3204/main.c 

OBJS += \
./tests/aic3204/aic3204_loop_linein.o \
./tests/aic3204/aic3204_test.o \
./tests/aic3204/aic3204_tone_headphone.o \
./tests/aic3204/main.o 

C_DEPS += \
./tests/aic3204/aic3204_loop_linein.d \
./tests/aic3204/aic3204_test.d \
./tests/aic3204/aic3204_tone_headphone.d \
./tests/aic3204/main.d 


# Each subdirectory must supply rules for building sources it contributes
tests/aic3204/%.o: ../tests/aic3204/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


