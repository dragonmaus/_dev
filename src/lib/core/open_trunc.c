#include <sys.h>
#include "error.h"
#include "open.h"

  int
open_trunc(const char *fn)
{
  int fd;

  fd = open(fn, O_WRONLY | O_CREAT | O_TRUNC | O_NONBLOCK, 0644);
  if (fd == -2) {
    fd = -1;
    errno = error_noent;
  }
  return fd;
}
