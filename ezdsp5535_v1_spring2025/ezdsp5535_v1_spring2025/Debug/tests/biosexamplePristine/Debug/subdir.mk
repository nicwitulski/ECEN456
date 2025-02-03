################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJ_SRCS += \
../tests/biosexamplePristine/Debug/aic3204.obj \
../tests/biosexamplePristine/Debug/hellocfg.obj \
../tests/biosexamplePristine/Debug/hellocfg_c.obj \
../tests/biosexamplePristine/Debug/main.obj 

C_SRCS += \
../tests/biosexamplePristine/Debug/hellocfg_c.c 

OBJS += \
./tests/biosexamplePristine/Debug/hellocfg_c.o 

C_DEPS += \
./tests/biosexamplePristine/Debug/hellocfg_c.d 


# Each subdirectory must supply rules for building sources it contributes
tests/biosexamplePristine/Debug/%.o: ../tests/biosexamplePristine/Debug/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


