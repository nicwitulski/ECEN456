################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v3.3_examples/mmc_sd/example4/chk_mmc.c \
../c55xx_csl/ccs_v3.3_examples/mmc_sd/example4/csl_mmcsd_atafs_example.c 

OBJS += \
./c55xx_csl/ccs_v3.3_examples/mmc_sd/example4/chk_mmc.o \
./c55xx_csl/ccs_v3.3_examples/mmc_sd/example4/csl_mmcsd_atafs_example.o 

C_DEPS += \
./c55xx_csl/ccs_v3.3_examples/mmc_sd/example4/chk_mmc.d \
./c55xx_csl/ccs_v3.3_examples/mmc_sd/example4/csl_mmcsd_atafs_example.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v3.3_examples/mmc_sd/example4/%.o: ../c55xx_csl/ccs_v3.3_examples/mmc_sd/example4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


