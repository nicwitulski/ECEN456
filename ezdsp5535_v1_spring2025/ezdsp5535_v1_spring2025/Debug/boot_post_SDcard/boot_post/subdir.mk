################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../boot_post_SDcard/boot_post/aic3204_loop_linein.c \
../boot_post_SDcard/boot_post/aic3204_test.c \
../boot_post_SDcard/boot_post/main.c \
../boot_post_SDcard/boot_post/mem_test.c \
../boot_post_SDcard/boot_post/oled_test.c \
../boot_post_SDcard/boot_post/spiflash_test.c \
../boot_post_SDcard/boot_post/usb.c 

OBJS += \
./boot_post_SDcard/boot_post/aic3204_loop_linein.o \
./boot_post_SDcard/boot_post/aic3204_test.o \
./boot_post_SDcard/boot_post/main.o \
./boot_post_SDcard/boot_post/mem_test.o \
./boot_post_SDcard/boot_post/oled_test.o \
./boot_post_SDcard/boot_post/spiflash_test.o \
./boot_post_SDcard/boot_post/usb.o 

C_DEPS += \
./boot_post_SDcard/boot_post/aic3204_loop_linein.d \
./boot_post_SDcard/boot_post/aic3204_test.d \
./boot_post_SDcard/boot_post/main.d \
./boot_post_SDcard/boot_post/mem_test.d \
./boot_post_SDcard/boot_post/oled_test.d \
./boot_post_SDcard/boot_post/spiflash_test.d \
./boot_post_SDcard/boot_post/usb.d 


# Each subdirectory must supply rules for building sources it contributes
boot_post_SDcard/boot_post/%.o: ../boot_post_SDcard/boot_post/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


