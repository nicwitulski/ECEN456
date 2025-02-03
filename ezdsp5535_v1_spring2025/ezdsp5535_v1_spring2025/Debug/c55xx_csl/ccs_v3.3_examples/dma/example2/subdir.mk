################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v3.3_examples/dma/example2/csl_dma_IntcExample.c 

OBJS += \
./c55xx_csl/ccs_v3.3_examples/dma/example2/csl_dma_IntcExample.o 

C_DEPS += \
./c55xx_csl/ccs_v3.3_examples/dma/example2/csl_dma_IntcExample.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v3.3_examples/dma/example2/%.o: ../c55xx_csl/ccs_v3.3_examples/dma/example2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


