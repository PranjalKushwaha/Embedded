#ifndef FLASH_H
#define FLASH_H

/**
 * Flash instruction set
 */
#define WRITE_ENABLE 0x06
#define WRITE_ENABLE_STATUS 0x50
#define WRITE_DISABLE 0x04
#define READ_STATUS_REG 0x05
#define WRITE_STATUS_REG 0x01
#define READ_DATA 0x03
#define FAST_READ 0x0B
#define FAST_READ_DUAL_OUTPUT 0x3B
#define FAST_READ_DUAL_IO 0xBB
#define PAGE_PROGRAM 0x02
#define SECTOR_ERASE 0x20
#define BLOCK_ERASE_32 0x52
#define BLOCK_ERASE_64 0xD8
#define CHIP_ERASE 0xC7
#define POWER_DOWN 0xB9
#define RELEASE_POWER_DOWN_DEV_ID 0xAB
#define DEVICE_ID 0x90
#define JDEC_ID 0x9F
#define READ_UNIQUE_ID 0x4B

#include "./stm8.h"

#endif