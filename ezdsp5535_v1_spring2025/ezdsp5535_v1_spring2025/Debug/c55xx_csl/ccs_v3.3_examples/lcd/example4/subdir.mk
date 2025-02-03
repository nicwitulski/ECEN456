################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v3.3_examples/lcd/example4/csl_lcdc_textDisplayExample.c \
../c55xx_csl/ccs_v3.3_examples/lcd/example4/lcdc_panel.c 

OBJS += \
./c55xx_csl/ccs_v3.3_examples/lcd/example4/csl_lcdc_textDisplayExample.o \
./c55xx_csl/ccs_v3.3_examples/lcd/example4/lcdc_panel.o 

C_DEPS += \
./c55xx_csl/ccs_v3.3_examples/lcd/example4/csl_lcdc_textDisplayExample.d \
./c55xx_csl/ccs_v3.3_examples/lcd/example4/lcdc_panel.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v3.3_examples/lcd/example4/%.o: ../c55xx_csl/ccs_v3.3_examples/lcd/example4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


