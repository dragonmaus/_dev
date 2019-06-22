#include <sys.h>
#include "error.h"
#include "open.h"

  int
open_path(const char *fn)
{
  int fd;

  fd = open(fn, O_PATH | O_CLOEXEC | O_NONBLOCK, 0);
  if (fd == -2) {
    fd = -1;
    errno = error_noent;
  }
  return fd;
}
