################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJ_SRCS += \
../tests/biosInClassExample/Debug/hello.obj \
../tests/biosInClassExample/Debug/hellocfg.obj \
../tests/biosInClassExample/Debug/hellocfg_c.obj 

C_SRCS += \
../tests/biosInClassExample/Debug/hellocfg_c.c 

OBJS += \
./tests/biosInClassExample/Debug/hellocfg_c.o 

C_DEPS += \
./tests/biosInClassExample/Debug/hellocfg_c.d 


# Each subdirectory must supply rules for building sources it contributes
tests/biosInClassExample/Debug/%.o: ../tests/biosInClassExample/Debug/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


