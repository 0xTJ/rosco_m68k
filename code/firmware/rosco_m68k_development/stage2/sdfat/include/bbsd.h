/*
 *------------------------------------------------------------
 *                                  ___ ___ _
 *  ___ ___ ___ ___ ___       _____|  _| . | |_
 * |  _| . |_ -|  _| . |     |     | . | . | '_|
 * |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
 *                     |_____|       firmware v1
 * ------------------------------------------------------------
 * Copyright (c)2020 Ross Bamford
 * See top-level LICENSE.md for licence information.
 *
 * rosco_m68k Bit-Banged SD Card over SPI
 * ------------------------------------------------------------
 */

#ifndef ROSCO_M68K_BBSD_H
#define ROSCO_M68K_BBSD_H

#include <stdbool.h>
#include <device/block.h>

#ifdef SD_MINIMAL
#ifndef SD_BLOCK_READ_ONLY      // Minimal config precludes non-block-sized reads...
#define SD_BLOCK_READ_ONLY
#endif
#endif

// Responses
#define R1_READY_STATE      0x00
#define R1_IDLE_STATE       0x01
#define R1_ILLEGAL_COMMAND  0x04
#define BLOCK_START         0xFE

typedef enum {
    BBSD_CARD_TYPE_V1,
    BBSD_CARD_TYPE_V2,
    BBSD_CARD_TYPE_SDHC,
    BBSD_CARD_TYPE_UNKNOWN
} BBSDCardType;

typedef struct {
#ifndef SD_FASTER
    bool            initialized;
#endif
    BBSPI           *spi;
    BBSDCardType    type;
#ifndef SD_BLOCK_READ_ONLY
    bool            have_current_block;     /* if true, the next two members have meaning */
    uint32_t        current_block_start;
    uint16_t        current_block_offset;
    bool            can_partial_read;
#endif
} BBSDCard;

#ifndef SD_MINIMAL
typedef struct {
  // 0x0
  unsigned csd_ver : 2;
  unsigned reserved1 : 6;
  // 0x1
  uint8_t taac;
  // 0x2
  uint8_t nsac;
  // 0x3
  uint8_t tran_speed;
  // 0x4
  uint8_t ccc_high;
  // 0x5
  unsigned ccc_low : 4;
  unsigned read_bl_len : 4;
  // 0x6
  unsigned read_bl_partial : 1;
  unsigned write_blk_misalign : 1;
  unsigned read_blk_misalign :1;
  unsigned dsr_imp : 1;
  unsigned reserved2 : 2;
  unsigned c_size_high : 2;
  // 0x7
  uint8_t c_size_mid;
  // 0x8
  unsigned c_size_low :2;
  unsigned vdd_r_curr_min : 3;
  unsigned vdd_r_curr_max : 3;
  // 0x9
  unsigned vdd_w_curr_min : 3;
  unsigned vdd_w_cur_max : 3;
  unsigned c_size_mult_high : 2;
  // 0xA
  unsigned c_size_mult_low : 1;
  unsigned erase_blk_en : 1;
  unsigned sector_size_high : 6;
  // 0xB
  unsigned sector_size_low : 1;
  unsigned wp_grp_size : 7;
  // 0xC
  unsigned wp_grp_enable : 1;
  unsigned reserved3 : 2;
  unsigned r2w_factor : 3;
  unsigned write_bl_len_high : 2;
  // 0xD
  unsigned write_bl_len_low : 2;
  unsigned write_bl_partial : 1;
  unsigned reserved4 : 5;
  // 0xE
  unsigned file_format_grp : 1;
  unsigned copy : 1;
  unsigned perm_write_protect : 1;
  unsigned tmp_write_protect : 1;
  unsigned file_format : 2;
  unsigned reserved5: 2;
  // 0xF
  unsigned crc : 7;
  unsigned always1 : 1;
} __attribute__ ((packed)) BBSDCard_CSD1;

//------------------------------------------------------------------------------
// CSD for version 2.00 cards
typedef struct {
  // 0x0
  unsigned csd_ver : 2;
  unsigned reserved1 : 6;
  // 0x1
  uint8_t taac;
  // 0x2
  uint8_t nsac;
  // 0x3
  uint8_t tran_speed;
  // 0x4
  uint8_t ccc_high;
  // 0x5
  unsigned ccc_low : 4;
  unsigned read_bl_len : 4;
  // 0x6
  unsigned read_bl_partial : 1;
  unsigned write_blk_misalign : 1;
  unsigned read_blk_misalign :1;
  unsigned dsr_imp : 1;
  unsigned reserved2 : 4;
  // 0x7
  unsigned reserved3 : 2;
  unsigned c_size_high : 6;
  // 0x8
  uint8_t c_size_mid;
  // 0x9
  uint8_t c_size_low;
  // 0xA
  unsigned reserved4 : 1;
  unsigned erase_blk_en : 1;
  unsigned sector_size_high : 6;
  // 0xB
  unsigned sector_size_low : 1;
  unsigned wp_grp_size : 7;
  // 0xC
  unsigned wp_grp_enable : 1;
  unsigned reserved5 : 2;
  unsigned r2w_factor : 3;
  unsigned write_bl_len_high : 2;
  // 0xD
  unsigned write_bl_len_low : 2;
  unsigned write_bl_partial : 1;
  unsigned reserved6 : 5;
  // 0xE
  unsigned file_format_grp : 1;
  unsigned copy : 1;
  unsigned perm_write_protect : 1;
  unsigned tmp_write_protect : 1;
  unsigned file_format : 2;
  unsigned reserved7: 2;
  // 0xF
  unsigned crc : 7;
  unsigned always1 : 1;
} __attribute__ ((packed)) BBSDCard_CSD2;

typedef union {
  BBSDCard_CSD1 v1;
  BBSDCard_CSD2 v2;
} BBSDCard_CSD;
#endif

bool BBSD_initialize(BBSDCard *sd, BBSPI *spi);
bool BBSD_make_device(BBSDCard *sd, BlockDevice *device);
uint8_t BBSD_command(BBSDCard *sd, uint8_t command, uint32_t arg);
uint8_t BBSD_acommand(BBSDCard *sd, uint8_t command, uint32_t arg);

#ifndef SD_MINIMAL
bool BBSD_readreg(BBSDCard *sd, uint8_t command, uint8_t *buf);
bool BBSD_get_csd(BBSDCard *sd, BBSDCard_CSD *csd);
uint32_t BBSD_get_size(BBSDCard *sd);
#endif

bool BBSD_read_data(BBSDCard *sd, uint32_t block, uint16_t start_ofs, uint16_t count, uint8_t *buffer);

#ifndef SD_BLOCK_READ_ONLY
bool BBSD_read_block(BBSDCard *sd, uint32_t block, uint8_t *buffer);
#endif

#endif /* ROSCO_M68K_BBSD_H */
