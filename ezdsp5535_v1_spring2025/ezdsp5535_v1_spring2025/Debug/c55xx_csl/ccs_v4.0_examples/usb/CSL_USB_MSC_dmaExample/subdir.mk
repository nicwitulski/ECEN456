################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v4.0_examples/usb/CSL_USB_MSC_dmaExample/chk_mmc.c \
../c55xx_csl/ccs_v4.0_examples/usb/CSL_USB_MSC_dmaExample/csl_usb_msc_dma_example.c 

OBJS += \
./c55xx_csl/ccs_v4.0_examples/usb/CSL_USB_MSC_dmaExample/chk_mmc.o \
./c55xx_csl/ccs_v4.0_examples/usb/CSL_USB_MSC_dmaExample/csl_usb_msc_dma_example.o 

C_DEPS += \
./c55xx_csl/ccs_v4.0_examples/usb/CSL_USB_MSC_dmaExample/chk_mmc.d \
./c55xx_csl/ccs_v4.0_examples/usb/CSL_USB_MSC_dmaExample/csl_usb_msc_dma_example.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v4.0_examples/usb/CSL_USB_MSC_dmaExample/%.o: ../c55xx_csl/ccs_v4.0_examples/usb/CSL_USB_MSC_dmaExample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


