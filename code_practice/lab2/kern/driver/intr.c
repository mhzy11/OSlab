#include <intr.h>
#include <sw.h>

/* intr_enable - enable CPU interrupts */
void intr_enable(void) { local_irq_enable(); }

/* intr_disable - disable CPU interrupts */
void intr_disable(void) { local_irq_disable(); }
