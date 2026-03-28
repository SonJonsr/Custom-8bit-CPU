#include <io.h>
#include <stdio.h>
#include <system.h>

#define REG_TEST_COMP_BASE 0x50008
#define ADR_0 0 * 2
#define ADR_1 1 * 2

#define byte unsigned char

void wr_dat_to_adr(unsigned short dat, unsigned short adr);
unsigned short rd_from_adr(unsigned short adr);

void show_sar_adc();
void show_all();

volatile unsigned short *adr0_ptr =
    (volatile unsigned short *)REG_TEST_COMP_BASE;
volatile int *adr1_ptr = (volatile int *)REG_TEST_COMP_BASE + 2;

int main() {
  int mcu_settings;
  unsigned short mask;
  unsigned short last_seen = 0;

  while (1) {
    // mcu_settings = *adr1_ptr;
    mcu_settings = IORD_16DIRECT(REG_TEST_COMP_BASE, ADR_1);

    if ((mcu_settings & 0x0010) == 0x0010)
      last_seen = 0;

    if ((mcu_settings & 0x0004) == 0x0004 && (last_seen != 0x0004)) {
      show_sar_adc();
      last_seen = 0x0004;
    } else if ((mcu_settings & 0x0008) == 0x0008 && last_seen != 0x0008) {
      show_all();
      last_seen = 0x0008;
    }
  }
  return 0;
}
void show_all() {
  unsigned short temp;
  unsigned short adr;
  for (unsigned short i = 0x0; i < 0xff; i++) {
    for (unsigned short j = 0x0; j < 0xff; j++) {
      adr = i << 8;
      adr |= j;
      temp = rd_from_adr(adr);
      printf("%x,%x,%x;", i, j, temp);
    }
    printf("\n");
  }
}

void show_sar_adc() {
  unsigned short temp;
  printf("Binært søk:\n");
  for (unsigned short i = 0x0; i < 4; i++) {
    for (unsigned short j = 0x0; j < 3; j++) {
      temp = rd_from_adr(j + 0x3 * i);
      printf("%x", temp);
      if (j != 2)
        printf(",");
    }
    printf(";\n");
  }
  printf("Binært søk ferdig\n");
}

void wr_dat_to_adr(unsigned short dat, unsigned short adr) {
  IOWR_16DIRECT(REG_TEST_COMP_BASE, ADR_0, adr);
  IOWR_16DIRECT(REG_TEST_COMP_BASE, ADR_1, dat);
}

unsigned short rd_from_adr(unsigned short adr) {
  //*adr0_ptr = adr;
  IOWR_16DIRECT(REG_TEST_COMP_BASE, ADR_0, adr);
  unsigned short temp = IORD_16DIRECT(REG_TEST_COMP_BASE, ADR_0);
  return temp;
}
