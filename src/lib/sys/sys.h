#ifndef SYS_H
#define SYS_H

struct dirent {
	unsigned int       d_fileno;
	unsigned short int d_reclen;
	unsigned char      d_type;
	unsigned char      d_namlen;
	char               d_name[];
};

struct timeval {
	long int tv_sec;
	long int tv_usec;
};

struct rusage {
	struct timeval ru_utime;
	struct timeval ru_stime;
	long int       ru_maxrss;
	long int       ru_ixrss;
	long int       ru_idrss;
	long int       ru_isrss;
	long int       ru_minflt;
	long int       ru_majflt;
	long int       ru_nswap;
	long int       ru_inblock;
	long int       ru_oublock;
	long int       ru_msgsnd;
	long int       ru_msgrcv;
	long int       ru_nsignals;
	long int       ru_nvcsw;
	long int       ru_nivcsw;
};

struct timespec {
	long int tv_sec;
	long int tv_nsec;
};

struct stat {
	unsigned int       st_dev;
	unsigned int       st_ino;
	unsigned short int st_mode;
	unsigned short int st_nlink;
	unsigned int       st_uid;
	unsigned int       st_gid;
	unsigned int       st_rdev;
	struct timespec    st_atim;
	struct timespec    st_mtim;
	struct timespec    st_ctim;
	long int           st_size;
	long int           st_blocks;
	int                st_blksize;
	unsigned int       st_flags;
	unsigned int       st_gen;
	int                st_lspare;
	struct timespec    st_birthtim;

	/* padding */
	unsigned int :(8 / 2) * (16 - (int)sizeof(struct timespec));
	unsigned int :(8 / 2) * (16 - (int)sizeof(struct timespec));
};

struct timezone {
	int tz_minuteswest;
	int tz_dsttime;
};

void         exit(int);
int          fork(void);
long int     read(int, char *, unsigned long int);
long int     write(int, const char *, unsigned long int);
int          open(const char *, int, int);
int          close(int);
int          wait3(int *, int, struct rusage *);
int          wait4(int, int *, int, struct rusage *);
int          waitpid(int, int *, int);
int          link(const char *, const char *);
int          unlink(const char *);
int          chdir(const char *);
int          fchdir(int);
int          mknod(const char *, int, int);
int          chmod(const char *, int);
int          chown(const char *, int, int);
int          getpid(void);
int          mount(const char *, const char *, int, const char *);
int          umount(const char *, int);
int          setuid(unsigned int);
unsigned int getuid(void);
unsigned int geteuid(void);
int          access(const char *, int);
int          chflags(const char *, unsigned long int);
int          fchflags(int, unsigned long int);
int          sync(void);
int          kill(int, int);
int          getppid(void);
int          dup(unsigned int);
unsigned int getegid(void);
unsigned int getgid(void);
int          getlogin(char *, unsigned int);
int          setlogin(const char *);
int          ioctl(int, unsigned long int, char *);
int          reboot(int);
int          symlink(const char *, const char *);
long int     readlink(const char *, char *, unsigned long int);
int          execve(const char *, const char *const *, const char *const *);
int          umask(int);
int          chroot(const char *);
int          vfork(void);
int          brk(const char *);
int          sbrk(int);
int          munmap(const char *, unsigned long int);
int          mprotect(const char *, unsigned long int, int);
int          madvise(const char *, unsigned long int, int);
int          getgroups(unsigned int, unsigned int *);
int          setgroups(unsigned int, unsigned int *);
int          getpgrp(void);
int          setpgid(int, int);
int          dup2(unsigned int, unsigned int);
int          fcntl(int, int, long int);
int          fsync(int);
int          gettimeofday(struct timeval *, struct timezone *);
int          settimeofday(struct timeval *, struct timezone *);
int          fchown(int, int, int);
int          fchmod(int, int);
int          setreuid(int, int);
int          setregid(int, int);
int          rename(const char *, const char *);
int          flock(int, int);
int          mkfifo(const char *, int);
int          shutdown(int, int);
int          mkdir(const char *, int);
int          rmdir(const char *);
int          setgid(unsigned int);
int          setegid(unsigned int);
int          seteuid(unsigned int);
int          stat(const char *, struct stat *);
int          fstat(int, struct stat *);
int          lstat(const char *, struct stat *);
int          getdirentries(int, char *, unsigned int, long int *);
int          getpgid(int);
int          lchown(const char *, int, int);
int          getdents(int, char *, unsigned long int);
int          lchmod(const char *, unsigned short int);
int          getcwd(char *, unsigned int);	/* __getcwd */
int          eaccess(const char *, int);
int          lchflags(const char *, unsigned long int);
long int     pread(int, char *, unsigned long int, long int);
long int     pwrite(int, const char *, unsigned long int, long int);
char *       mmap(const char *, unsigned long int, int, int, int, long int);
long int     lseek(int, long int, int);
int          truncate(const char *, long int);
int          ftruncate(int, long int);

#define DT_UNKNOWN         000
#define DT_FIFO            001
#define DT_CHR             002
#define DT_DIR             004
#define DT_BLK             006
#define DT_REG             010
#define DT_LNK             012
#define DT_SOCK            014
#define DT_WHT             016

#define F_DUPFD            00000
#define F_DUPFD_CLOEXEC    02006
#define F_GETFD            00001
#define F_SETFD            00002
#define F_GETFL            00003
#define F_SETFL            00004
#define F_GETLK            00005
#define F_SETLK            00006
#define F_SETLKW           00007
#define F_RDLCK            00000
#define F_WRLCK            00001
#define F_UNLCK            00002
#define F_OFD_GETLK        00044
#define F_OFD_SETLK        00045
#define F_OFD_SETLKW       00046
#define F_GETOWN           00011
#define F_SETOWN           00010
#define F_GETOWN_EX        00020
#define F_SETOWN_EX        00017
#define F_OWNER_TID        00000
#define F_OWNER_PID        00001
#define F_OWNER_PGRP       00002
#define F_GETSIG           00013
#define F_SETSIG           00012
#define F_SETLEASE         02000
#define F_GETLEASE         02001
#define F_NOTIFY           02002
#define F_SETPIPE_SZ       02007
#define F_GETPIPE_SZ       02010
#define F_ADD_SEALS        02011
#define F_SEAL_SEAL        00001
#define F_GET_SEALS        02012
#define F_SEAL_SHRINK      00002
#define F_SEAL_GROW        00004
#define F_SEAL_WRITE       00010
#define F_GET_RW_HINT      02013
#define F_SET_RW_HINT      02014
#define F_GET_FILE_RW_HINT 02015
#define F_SET_FILE_RW_HINT 02016
#define F_GETLK64          F_GETLK
#define F_SETLK64          F_SETLK
#define F_SETLKW64         F_SETLKW

#define O_RDONLY           000000000
#define O_WRONLY           000000001
#define O_CREAT            000000100
#define O_EXCL             000000200
#define O_NOCTTY           000000400
#define O_TRUNC            000001000
#define O_APPEND           000002000
#define O_NONBLOCK         000004000
#define O_DSYNC            000010000
#define O_ASYNC            000020000
#define O_DIRECTORY        000200000
#define O_NOFOLLOW         000400000
#define O_CLOEXEC          002000000
#define O_SYNC             004010000
#define O_PATH             010000000

#define S_IFIFO            0010000
#define S_IFCHR            0020000
#define S_IFDIR            0040000
#define S_IFBLK            0060000
#define S_IFREG            0100000
#define S_IFLNK            0120000
#define S_IFSOCK           0140000
#define S_IFMT             0170000

#define S_ISFIFO(mode)     (((mode) & S_IFMT) == S_IFIFO)
#define S_ISCHR(mode)      (((mode) & S_IFMT) == S_IFCHR)
#define S_ISDIR(mode)      (((mode) & S_IFMT) == S_IFDIR)
#define S_ISBLK(mode)      (((mode) & S_IFMT) == S_IFBLK)
#define S_ISREG(mode)      (((mode) & S_IFMT) == S_IFREG)
#define S_ISLNK(mode)      (((mode) & S_IFMT) == S_IFLNK)
#define S_ISSOCK(mode)     (((mode) & S_IFMT) == S_IFSOCK)

#define S_IXOTH            00001
#define S_IWOTH            00002
#define S_IROTH            00004
#define S_IRWXO            00007
#define S_IXGRP            00010
#define S_IWGRP            00020
#define S_IRGRP            00040
#define S_IRWXG            00070
#define S_IXUSR            00100
#define S_IWUSR            00200
#define S_IRUSR            00400
#define S_IRWXU            00700
#define S_ISVTX            01000
#define S_ISGID            02000
#define S_ISUID            04000

#define UTIME_OMIT         0x3FFFFFFE
#define UTIME_NOW          0x3FFFFFFF

#define WEXITSTATUS(s)     (((s) & 0xFF00) >> 8)
#define WTERMSIG(s)        ((s) & 0x7F)
#define WSTOPSIG(s)        WEXITSTATUS(s)
#define WCOREDUMP(s)       ((s) & 0x80)
#define WIFEXITED(s)       (!WTERMSIG(s))
#define WIFSTOPPED(s)      ((short)((((s) & 0xFFFF) * 0x10001) >> 8) > 0x7F00)
#define WIFSIGNALED(s)     (((s) & 0xFFFF) - 1U < 0xFFU)
#define WIFCONTINUED(s)    ((s) == 0xFFFF)

#endif
