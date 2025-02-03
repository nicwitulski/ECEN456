################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v4.0_examples/nand/CSL_NAND_DmaWordSwapExample/csl_nand_dmaWordSwap_example.c 

OBJS += \
./c55xx_csl/ccs_v4.0_examples/nand/CSL_NAND_DmaWordSwapExample/csl_nand_dmaWordSwap_example.o 

C_DEPS += \
./c55xx_csl/ccs_v4.0_examples/nand/CSL_NAND_DmaWordSwapExample/csl_nand_dmaWordSwap_example.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v4.0_examples/nand/CSL_NAND_DmaWordSwapExample/%.o: ../c55xx_csl/ccs_v4.0_examples/nand/CSL_NAND_DmaWordSwapExample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


