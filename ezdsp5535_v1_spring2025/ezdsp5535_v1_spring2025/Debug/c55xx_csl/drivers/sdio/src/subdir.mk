################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/drivers/sdio/src/sdio_driver.c 

OBJS += \
./c55xx_csl/drivers/sdio/src/sdio_driver.o 

C_DEPS += \
./c55xx_csl/drivers/sdio/src/sdio_driver.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/drivers/sdio/src/%.o: ../c55xx_csl/drivers/sdio/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


