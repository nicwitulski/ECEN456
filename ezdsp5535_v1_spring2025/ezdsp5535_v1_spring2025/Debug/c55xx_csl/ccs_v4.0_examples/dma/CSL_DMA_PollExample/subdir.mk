################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v4.0_examples/dma/CSL_DMA_PollExample/csl_dma_PollExample.c 

OBJS += \
./c55xx_csl/ccs_v4.0_examples/dma/CSL_DMA_PollExample/csl_dma_PollExample.o 

C_DEPS += \
./c55xx_csl/ccs_v4.0_examples/dma/CSL_DMA_PollExample/csl_dma_PollExample.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v4.0_examples/dma/CSL_DMA_PollExample/%.o: ../c55xx_csl/ccs_v4.0_examples/dma/CSL_DMA_PollExample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


