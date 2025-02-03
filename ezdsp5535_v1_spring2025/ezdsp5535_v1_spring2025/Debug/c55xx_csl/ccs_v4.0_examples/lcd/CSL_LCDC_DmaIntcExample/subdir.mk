################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaIntcExample/csl_lcdc_DmaIntcExample.c \
../c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaIntcExample/lcdc_panel.c 

OBJS += \
./c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaIntcExample/csl_lcdc_DmaIntcExample.o \
./c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaIntcExample/lcdc_panel.o 

C_DEPS += \
./c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaIntcExample/csl_lcdc_DmaIntcExample.d \
./c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaIntcExample/lcdc_panel.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaIntcExample/%.o: ../c55xx_csl/ccs_v4.0_examples/lcd/CSL_LCDC_DmaIntcExample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


