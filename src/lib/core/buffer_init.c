#include "buffer.h"

  void
buffer_init(buffer *s, int (*op)(unsigned int, char *, unsigned int), unsigned int fd, char *buf, unsigned int len)
{
  s->x = buf;
  s->fd = fd;
  s->op = op;
  s->p = 0;
  s->n = len;
}
