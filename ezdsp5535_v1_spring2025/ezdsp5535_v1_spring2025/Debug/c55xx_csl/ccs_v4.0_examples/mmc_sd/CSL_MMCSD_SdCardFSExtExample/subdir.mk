################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/ata_ext_func.c \
../c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/chk_mmc.c \
../c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/csl_mmcsd_atafs_ext_example.c 

OBJS += \
./c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/ata_ext_func.o \
./c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/chk_mmc.o \
./c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/csl_mmcsd_atafs_ext_example.o 

C_DEPS += \
./c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/ata_ext_func.d \
./c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/chk_mmc.d \
./c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/csl_mmcsd_atafs_ext_example.d 


# Each subdirectory must supply rules for building sources it contributes
c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/%.o: ../c55xx_csl/ccs_v4.0_examples/mmc_sd/CSL_MMCSD_SdCardFSExtExample/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


