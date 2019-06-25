#include <limits.h>
#include <sys.h>
#include "error.h"
#include "fmt.h"
#include "open.h"
#include "path.h"
#include "str.h"

  int
path_canonical(char *path, int bufsize)
{
  char full[bufsize];
  char real[bufsize];
  int fd, i, size;
  struct stat st1, st2;

  if (!*path) {
    errno = error_inval;
    return -1;
  }

  /* make path absolute */
  size = 0;
  if (*path != '/') {
    if ((i = getcwd(full, bufsize)) < 0) {
      errno = -i;
      return -1;
    }
    size = str_len(full);
    if (full[size - 1] != '/') full[size++] = '/';
  }
  size += str_copy(full + size, path);

  fd = open_read(full);
  if (fd < 0) {
    if (errno != error_noent) return -1;
    if (size == 1) return -1; // somehow `/` does not exist

    i = str_findr(full, '/');

    char tail[size - i];
    str_copy(tail, full + i + 1);

    if (i > 1) full[i] = 0;
    else full[i + 1] = 0;

    size = path_canonical(full, bufsize);
    if (size == -1) return -1;

    full[size++] = '/';
    str_copy(full + size, tail);
    path_absolute(full, bufsize);

    return str_copy(path, full);
  }

  i = str_copy(full, "/proc/self/fd/");
  i += fmt_uint(full + i, fd);
  full[i] = 0;

  i = readlink(full, real, bufsize);
  if (i == -1) {
    close(fd);
    return -1;
  }
  real[i] = 0;

  i = stat(real, &st2);
  if (i == -1) {
    close(fd);
    return -1;
  }
  i = fstat(fd, &st1);
  if (i == -1 || st1.st_dev != st2.st_dev || st1.st_ino != st2.st_ino) {
    close(fd);
    return -1;
  }

  close(fd);

  return str_copy(path, real);
}
