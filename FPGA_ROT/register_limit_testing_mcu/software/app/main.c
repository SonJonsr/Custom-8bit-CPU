#include <io.h>
#include <stdint.h>
#include <stdio.h>
#include <system.h>

#define REG_TEST_COMP_BASE 0x50008
#define ADR_0 0 * 2
#define ADR_1 1 * 2

#define byte unsigned char

void wr_dat_to_adr(unsigned short dat, unsigned short adr);
unsigned short rd_from_adr(unsigned short adr);

void show_all(unsigned short *best_vars);

volatile unsigned short *adr0_ptr =
    (volatile unsigned short *)REG_TEST_COMP_BASE;
volatile int *adr1_ptr = (volatile int *)REG_TEST_COMP_BASE + 2;

int main() {
  int mcu_settings;
  unsigned short mask;
  unsigned short last_seen = 0;

  uint32_t result;
  byte tr_limit;
  byte re_limit;
  byte tf_limit;
  uint32_t to_time;
  unsigned short best_vars[4];
  int mode;

  while (1) {
    // mcu_settings = *adr1_ptr;
    mcu_settings = IORD_16DIRECT(REG_TEST_COMP_BASE, ADR_1);

    if ((mcu_settings & 0x0010) == 0x0010)
      last_seen = 0;

    if ((mcu_settings & 0x0008) == 0x0008 && last_seen != 0x0008) {
      show_all(best_vars);
      tr_limit = result >> 24;
      tf_limit = result >> 16;
      re_limit = 0x3f & (result >> 10);
      to_time = result & 0x03ff;
      last_seen = 0x0008;
      printf("\n\n");
      printf("Minste verdi er i hex:\n");
      printf("0x%x,0x%x,0x%x,0x%x;", best_vars[0], best_vars[1], best_vars[2],
             best_vars[3]);
      printf("\n");
      printf("Minste verdi er:\n");
      printf("%d,%d,%d,%d;", best_vars[0], best_vars[1], best_vars[2],
             best_vars[3]);
    }
  }
  return 0;
}
void show_all(unsigned short *best_vars) {
  unsigned short temp;
  unsigned short adr;
  unsigned short re_limit;
  unsigned short to_time;
  unsigned short to_time_smallest = 0xFFFF;
  unsigned short re_tf_time_smallest = 0xFFFF;
  uint32_t result = 0x0;
  printf("tr limit; tf limit; to time\n");
  for (unsigned short tr_limit = 0x0; tr_limit <= 0xff; tr_limit++) {
    // printf("\nTo_time_smallest: %x (%d)", to_time_smallest,
    // to_time_smallest); printf("\nTr_limit: %x (%d)\n", tr_limit, tr_limit);
    for (unsigned short tf_limit = 0x0; tf_limit <= 0xff; tf_limit++) {
      adr = tr_limit << 8;
      adr |= tf_limit;
      temp = rd_from_adr(adr);
      re_limit = temp >> 10;
      to_time = temp & 0x03FF;
      if (to_time <= to_time_smallest && to_time <= 255 &&
          (re_limit + tf_limit) <= re_tf_time_smallest) {
        // result = adr << 16;
        // result |= temp;
        best_vars[0] = tr_limit;
        best_vars[1] = tf_limit;
        best_vars[2] = re_limit;
        best_vars[3] = to_time;
        to_time_smallest = best_vars[3];
        re_tf_time_smallest = best_vars[1] + best_vars[2];
      }
      // Prints everytime there is a new fastest to_time
      //
      // if (to_time <= to_time_smallest)
      //
      // Prints every combo where to_time needs between 9 and 10 bits to get
      // correct time
      //
      // if (to_time >= 256 && to_time != 1023)
      //
      // if (re_limit != 63 && to_time != 1023)
      // printf("%d,%d,%d,%d;", tr_limit, tf_limit, re_limit, to_time);

      printf("%d;%d;%d-", tr_limit, tf_limit, to_time);
    }
  }
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
