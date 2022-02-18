extern "C" 
{
typedef long unsigned int size_t;
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
{
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef struct
{
  int __count;
  union
  
{
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE
{
  int _flags;
  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef __ssize_t cookie_read_function_t (void *__cookie, char *__buf,
                                          size_t __nbytes);
typedef __ssize_t cookie_write_function_t (void *__cookie, const char *__buf,
                                           size_t __nbytes);
typedef int cookie_seek_function_t (void *__cookie, __off64_t *__pos, int __w);
typedef int cookie_close_function_t (void *__cookie);
typedef struct _IO_cookie_io_functions_t
{
  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
typedef __gnuc_va_list va_list;
typedef __off_t off_t;
typedef __off64_t off64_t;
typedef __ssize_t ssize_t;
typedef __fpos_t fpos_t;
typedef __fpos64_t fpos64_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) throw ();
extern int rename (const char *__old, const char *__new) throw ();
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) throw ();
extern int renameat2 (int __oldfd, const char *__old, int __newfd,
        const char *__new, unsigned int __flags) throw ();
extern FILE *tmpfile (void) ;
extern FILE *tmpfile64 (void) ;
extern char *tmpnam (char *__s) throw () ;
extern char *tmpnam_r (char *__s) throw () ;
extern char *tempnam (const char *__dir, const char *__pfx)
     throw () __attribute__ ((__malloc__)) ;
extern int fclose (FILE *__stream);
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern int fcloseall (void);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) ;
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) ;
extern FILE *fdopen (int __fd, const char *__modes) throw () ;
extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     cookie_io_functions_t __io_funcs) throw () ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  throw () ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) throw () ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) throw ();
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) throw ();
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) throw ();
extern void setlinebuf (FILE *__stream) throw ();
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) throw ();
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) throw ();
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     throw () __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__printf__, 3, 0)));
extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__printf__, 2, 0))) ;
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;
extern int scanf (const char *__restrict __format, ...) ;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) throw ();
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) throw () __asm__ ("" "__isoc99_sscanf");
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) throw () __asm__ ("" "__isoc99_vsscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
          ;
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) ;
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream);
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off_t __off, int __whence);
extern __off_t ftello (FILE *__stream) ;
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) ;
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos);
extern void clearerr (FILE *__stream) throw ();
extern int feof (FILE *__stream) throw () ;
extern int ferror (FILE *__stream) throw () ;
extern void clearerr_unlocked (FILE *__stream) throw ();
extern int feof_unlocked (FILE *__stream) throw () ;
extern int ferror_unlocked (FILE *__stream) throw () ;
extern void perror (const char *__s);
extern int sys_nerr;
extern const char *const sys_errlist[];
extern int _sys_nerr;
extern const char *const _sys_errlist[];
extern int fileno (FILE *__stream) throw () ;
extern int fileno_unlocked (FILE *__stream) throw () ;
extern FILE *popen (const char *__command, const char *__modes) ;
extern int pclose (FILE *__stream);
extern char *ctermid (char *__s) throw ();
extern char *cuserid (char *__s);
struct obstack;
extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     throw () __attribute__ ((__format__ (__printf__, 2, 0)));
extern void flockfile (FILE *__stream) throw ();
extern int ftrylockfile (FILE *__stream) throw () ;
extern void funlockfile (FILE *__stream) throw ();
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
}
namespace std
{
  typedef long unsigned int size_t;
  typedef long int ptrdiff_t;
  typedef decltype(nullptr) nullptr_t;
}
namespace std
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
{
}
namespace __gnu_cxx
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
{
}
typedef long unsigned int size_t;
extern "C" 
{
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
typedef struct
  
{
    int quot;
    int rem;
  } div_t;
typedef struct
  
{
    long int quot;
    long int rem;
  } ldiv_t;
__extension__ typedef struct
  
{
    long long int quot;
    long long int rem;
  } lldiv_t;
extern size_t __ctype_get_mb_cur_max (void) throw () ;
extern double atof (const char *__nptr)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern int atoi (const char *__nptr)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern long int atol (const char *__nptr)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
__extension__ extern long long int atoll (const char *__nptr)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) throw () __attribute__ ((__nonnull__ (1)));
extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
extern _Float32 strtof32 (const char *__restrict __nptr,
     char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
extern _Float64 strtof64 (const char *__restrict __nptr,
     char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
extern _Float32x strtof32x (const char *__restrict __nptr,
       char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
extern _Float64x strtof64x (const char *__restrict __nptr,
       char **__restrict __endptr)
     throw () __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
extern int strfromd (char *__dest, size_t __size, const char *__format,
       double __f)
     throw () __attribute__ ((__nonnull__ (3)));
extern int strfromf (char *__dest, size_t __size, const char *__format,
       float __f)
     throw () __attribute__ ((__nonnull__ (3)));
extern int strfroml (char *__dest, size_t __size, const char *__format,
       long double __f)
     throw () __attribute__ ((__nonnull__ (3)));
extern int strfromf32 (char *__dest, size_t __size, const char * __format,
         _Float32 __f)
     throw () __attribute__ ((__nonnull__ (3)));
extern int strfromf64 (char *__dest, size_t __size, const char * __format,
         _Float64 __f)
     throw () __attribute__ ((__nonnull__ (3)));
extern int strfromf32x (char *__dest, size_t __size, const char * __format,
   _Float32x __f)
     throw () __attribute__ ((__nonnull__ (3)));
extern int strfromf64x (char *__dest, size_t __size, const char * __format,
   _Float64x __f)
     throw () __attribute__ ((__nonnull__ (3)));
struct __locale_struct
{
  struct __locale_data *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
};
typedef struct __locale_struct *__locale_t;
typedef __locale_t locale_t;
extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     locale_t __loc) throw () __attribute__ ((__nonnull__ (1, 4)));
extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 4)));
extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
extern _Float32 strtof32_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
extern _Float64 strtof64_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
extern _Float32x strtof32x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
extern _Float64x strtof64x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     throw () __attribute__ ((__nonnull__ (1, 3)));
extern char *l64a (long int __n) throw () ;
extern long int a64l (const char *__s)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern "C" 
{
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __ino64_t ino64_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;
typedef __clockid_t clockid_t;
typedef __time_t time_t;
typedef __timer_t timer_t;
typedef __useconds_t useconds_t;
typedef __suseconds_t suseconds_t;
typedef long unsigned int size_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{
  return ((__uint16_t) ((((__bsx) >> 8) & 0xff) | (((__bsx) & 0xff) << 8)));
}
static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{
  return ((((__bsx) & 0xff000000u) >> 24) | (((__bsx) & 0x00ff0000u) >> 8) | (((__bsx) & 0x0000ff00u) << 8) | (((__bsx) & 0x000000ffu) << 24));
}
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return ((((__bsx) & 0xff00000000000000ull) >> 56) | (((__bsx) & 0x00ff000000000000ull) >> 40) | (((__bsx) & 0x0000ff0000000000ull) >> 24) | (((__bsx) & 0x000000ff00000000ull) >> 8) | (((__bsx) & 0x00000000ff000000ull) << 8) | (((__bsx) & 0x0000000000ff0000ull) << 24) | (((__bsx) & 0x000000000000ff00ull) << 40) | (((__bsx) & 0x00000000000000ffull) << 56));
}
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}
static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}
static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
typedef __sigset_t sigset_t;
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef long int __fd_mask;
typedef struct
  
{
    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern "C" 
{
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
}
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;
  unsigned int __nusers;
  int __kind;
  short __spins;
  short __elision;
  __pthread_list_t __list;
};
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;
  int __cur_writer;
  int __shared;
  signed char __rwelision;
  unsigned char __pad1[7];
  unsigned long int __pad2;
  unsigned int __flags;
};
struct __pthread_cond_s
{
  __extension__ union
  
{
    __extension__ unsigned long long int __wseq;
    struct
    
{
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  
{
    __extension__ unsigned long long int __g1_start;
    struct
    
{
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
typedef unsigned long int pthread_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
}
extern long int random (void) throw ();
extern void srandom (unsigned int __seed) throw ();
extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) throw () __attribute__ ((__nonnull__ (2)));
extern char *setstate (char *__statebuf) throw () __attribute__ ((__nonnull__ (1)));
struct random_data
  
{
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };
extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     throw () __attribute__ ((__nonnull__ (2)));
extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     throw () __attribute__ ((__nonnull__ (2, 4)));
extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int rand (void) throw ();
extern void srand (unsigned int __seed) throw ();
extern int rand_r (unsigned int *__seed) throw ();
extern double drand48 (void) throw ();
extern double erand48 (unsigned short int __xsubi[3]) throw () __attribute__ ((__nonnull__ (1)));
extern long int lrand48 (void) throw ();
extern long int nrand48 (unsigned short int __xsubi[3])
     throw () __attribute__ ((__nonnull__ (1)));
extern long int mrand48 (void) throw ();
extern long int jrand48 (unsigned short int __xsubi[3])
     throw () __attribute__ ((__nonnull__ (1)));
extern void srand48 (long int __seedval) throw ();
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     throw () __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) throw () __attribute__ ((__nonnull__ (1)));
struct drand48_data
  
{
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;
  };
extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     throw () __attribute__ ((__nonnull__ (2)));
extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern void *malloc (size_t __size) throw () __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     throw () __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     throw () __attribute__ ((__warn_unused_result__)) ;
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     throw () __attribute__ ((__warn_unused_result__))
                                      ;
extern void free (void *__ptr) throw ();
typedef long unsigned int size_t;
extern "C" 
{
extern void *alloca (size_t __size) throw ();
}
extern void *valloc (size_t __size) throw () __attribute__ ((__malloc__))
                                         ;
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern void *aligned_alloc (size_t __alignment, size_t __size)
     throw () __attribute__ ((__malloc__)) ;
extern void abort (void) throw () __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) throw () __attribute__ ((__nonnull__ (1)));
extern "C++" int at_quick_exit (void (*__func) (void))
     throw () __asm ("at_quick_exit") __attribute__ ((__nonnull__ (1)));
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     throw () __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) throw () __attribute__ ((__noreturn__));
extern void quick_exit (int __status) throw () __attribute__ ((__noreturn__));
extern void _Exit (int __status) throw () __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) throw () __attribute__ ((__nonnull__ (1))) ;
extern char *secure_getenv (const char *__name)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int putenv (char *__string) throw () __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     throw () __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) throw () __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) throw ();
extern char *mktemp (char *__template) throw () __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) ;
extern char *mkdtemp (char *__template) throw () __attribute__ ((__nonnull__ (1))) ;
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) ;
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
extern char *canonicalize_file_name (const char *__name)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) throw () ;
typedef int (*__compar_fn_t) (const void *, const void *);
typedef __compar_fn_t comparison_fn_t;
typedef int (*__compar_d_fn_t) (const void *, const void *, void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));
extern int abs (int __x) throw () __attribute__ ((__const__)) ;
extern long int labs (long int __x) throw () __attribute__ ((__const__)) ;
__extension__ extern long long int llabs (long long int __x)
     throw () __attribute__ ((__const__)) ;
extern div_t div (int __numer, int __denom)
     throw () __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     throw () __attribute__ ((__const__)) ;
__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     throw () __attribute__ ((__const__)) ;
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) throw () __attribute__ ((__nonnull__ (3, 4))) ;
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) throw () __attribute__ ((__nonnull__ (3, 4))) ;
extern char *gcvt (double __value, int __ndigit, char *__buf)
     throw () __attribute__ ((__nonnull__ (3))) ;
extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     throw () __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     throw () __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     throw () __attribute__ ((__nonnull__ (3))) ;
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) throw () __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) throw () __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (3, 4, 5)));
extern int mblen (const char *__s, size_t __n) throw ();
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) throw ();
extern int wctomb (char *__s, wchar_t __wchar) throw ();
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) throw ();
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     throw ();
extern int rpmatch (const char *__response) throw () __attribute__ ((__nonnull__ (1))) ;
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     throw () __attribute__ ((__nonnull__ (1, 2, 3))) ;
extern int posix_openpt (int __oflag) ;
extern int grantpt (int __fd) throw ();
extern int unlockpt (int __fd) throw ();
extern char *ptsname (int __fd) throw () ;
extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2)));
extern int getpt (void);
extern int getloadavg (double __loadavg[], int __nelem)
     throw () __attribute__ ((__nonnull__ (1)));
}
extern "C++"
{
namespace std __attribute__ ((__visibility__ ("default")))
{
  using ::abs;
  inline long
  abs(long __i) { return __builtin_labs(__i); }
{
  inline long long
  abs(long long __x) { return __builtin_llabs (__x); }
{
  inline constexpr double
  abs(double __x)
  { return __builtin_fabs(__x); }
{
  inline constexpr float
  abs(float __x)
  { return __builtin_fabsf(__x); }
{
  inline constexpr long double
  abs(long double __x)
  { return __builtin_fabsl(__x); }
{
  inline constexpr __int128
  abs(__int128 __x) { return __x >= 0 ? __x : -__x; }
{
  inline constexpr
  __float128
  abs(__float128 __x)
  { return __x < 0 ? -__x : __x; }
{
}
}
extern "C++"
{
namespace std __attribute__ ((__visibility__ ("default")))
{
  using ::div_t;
  using ::ldiv_t;
  using ::abort;
  using ::atexit;
  using ::at_quick_exit;
  using ::atof;
  using ::atoi;
  using ::atol;
  using ::bsearch;
  using ::calloc;
  using ::div;
  using ::exit;
  using ::free;
  using ::getenv;
  using ::labs;
  using ::ldiv;
  using ::malloc;
  using ::mblen;
  using ::mbstowcs;
  using ::mbtowc;
  using ::qsort;
  using ::quick_exit;
  using ::rand;
  using ::realloc;
  using ::srand;
  using ::strtod;
  using ::strtol;
  using ::strtoul;
  using ::system;
  using ::wcstombs;
  using ::wctomb;
  inline ldiv_t
  div(long __i, long __j) { return ldiv(__i, __j); }
{
}
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
  using ::lldiv_t;
  using ::_Exit;
  using ::llabs;
  inline lldiv_t
  div(long long __n, long long __d)
  { lldiv_t __q; __q.quot = __n / __d; __q.rem = __n % __d; return __q; }
{
  using ::lldiv;
  using ::atoll;
  using ::strtoll;
  using ::strtoull;
  using ::strtof;
  using ::strtold;
}
namespace std
{
  using ::__gnu_cxx::lldiv_t;
  using ::__gnu_cxx::_Exit;
  using ::__gnu_cxx::llabs;
  using ::__gnu_cxx::div;
  using ::__gnu_cxx::lldiv;
  using ::__gnu_cxx::atoll;
  using ::__gnu_cxx::strtof;
  using ::__gnu_cxx::strtoll;
  using ::__gnu_cxx::strtoull;
  using ::__gnu_cxx::strtold;
}
}
using std::abort;
using std::atexit;
using std::exit;
  using std::at_quick_exit;
  using std::quick_exit;
using std::div_t;
using std::ldiv_t;
using std::abs;
using std::atof;
using std::atoi;
using std::atol;
using std::bsearch;
using std::calloc;
using std::div;
using std::free;
using std::getenv;
using std::labs;
using std::ldiv;
using std::malloc;
using std::mblen;
using std::mbstowcs;
using std::mbtowc;
using std::qsort;
using std::rand;
using std::realloc;
using std::srand;
using std::strtod;
using std::strtol;
using std::strtoul;
using std::system;
using std::wcstombs;
using std::wctomb;
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef long unsigned int rsize_t;
typedef long unsigned int size_t;
struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;
  int tai;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
extern "C" 
{
extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) throw ();
}
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
  long int tm_gmtoff;
  const char *tm_zone;
};
struct itimerspec
  
{
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
extern "C" 
{
extern clock_t clock (void) throw ();
extern time_t time (time_t *__timer) throw ();
extern double difftime (time_t __time1, time_t __time0)
     throw () __attribute__ ((__const__));
extern time_t mktime (struct tm *__tp) throw ();
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) throw ();
extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     throw ();
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) throw ();
extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    locale_t __loc) throw ();
extern struct tm *gmtime (const time_t *__timer) throw ();
extern struct tm *localtime (const time_t *__timer) throw ();
extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) throw ();
extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) throw ();
extern char *asctime (const struct tm *__tp) throw ();
extern char *ctime (const time_t *__timer) throw ();
extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) throw ();
extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) throw ();
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
extern char *tzname[2];
extern void tzset (void) throw ();
extern int daylight;
extern long int timezone;
extern time_t timegm (struct tm *__tp) throw ();
extern time_t timelocal (struct tm *__tp) throw ();
extern int dysize (int __year) throw () __attribute__ ((__const__));
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) throw ();
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) throw ();
extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     throw ();
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) throw ();
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) throw ();
extern int timer_delete (timer_t __timerid) throw ();
extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) throw ();
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     throw ();
extern int timer_getoverrun (timer_t __timerid) throw ();
extern int timespec_get (struct timespec *__ts, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
extern int getdate_err;
extern struct tm *getdate (const char *__string);
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);
}
extern "C" 
{
typedef long unsigned int size_t;
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) throw () __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern void *memset (void *__s, int __c, size_t __n) throw () __attribute__ ((__nonnull__ (1)));
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern "C++"
{
extern void *memchr (void *__s, int __c, size_t __n)
      throw () __asm ("memchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern const void *memchr (const void *__s, int __c, size_t __n)
      throw () __asm ("memchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
}
extern "C++" void *rawmemchr (void *__s, int __c)
     throw () __asm ("rawmemchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern "C++" const void *rawmemchr (const void *__s, int __c)
     throw () __asm ("rawmemchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern "C++" void *memrchr (void *__s, int __c, size_t __n)
      throw () __asm ("memrchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern "C++" const void *memrchr (const void *__s, int __c, size_t __n)
      throw () __asm ("memrchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcoll (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (2)));
extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) throw () __attribute__ ((__nonnull__ (2, 4)));
extern char *strdup (const char *__s)
     throw () __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strndup (const char *__string, size_t __n)
     throw () __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern "C++"
{
extern char *strchr (char *__s, int __c)
     throw () __asm ("strchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern const char *strchr (const char *__s, int __c)
     throw () __asm ("strchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
}
extern "C++"
{
extern char *strrchr (char *__s, int __c)
     throw () __asm ("strrchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern const char *strrchr (const char *__s, int __c)
     throw () __asm ("strrchr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
}
extern "C++" char *strchrnul (char *__s, int __c)
     throw () __asm ("strchrnul") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern "C++" const char *strchrnul (const char *__s, int __c)
     throw () __asm ("strchrnul") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (const char *__s, const char *__reject)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (const char *__s, const char *__accept)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern "C++"
{
extern char *strpbrk (char *__s, const char *__accept)
     throw () __asm ("strpbrk") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern const char *strpbrk (const char *__s, const char *__accept)
     throw () __asm ("strpbrk") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
}
extern "C++"
{
extern char *strstr (char *__haystack, const char *__needle)
     throw () __asm ("strstr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern const char *strstr (const char *__haystack, const char *__needle)
     throw () __asm ("strstr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
}
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     throw () __attribute__ ((__nonnull__ (2)));
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     throw () __attribute__ ((__nonnull__ (2, 3)));
extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     throw () __attribute__ ((__nonnull__ (2, 3)));
extern "C++" char *strcasestr (char *__haystack, const char *__needle)
     throw () __asm ("strcasestr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern "C++" const char *strcasestr (const char *__haystack,
         const char *__needle)
     throw () __asm ("strcasestr") __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)));
extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlen (const char *__s)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strnlen (const char *__string, size_t __maxlen)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) throw ();
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2))) ;
extern char *strerror_l (int __errnum, locale_t __l) throw ();
typedef long unsigned int size_t;
extern "C" 
{
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void bcopy (const void *__src, void *__dest, size_t __n)
  throw () __attribute__ ((__nonnull__ (1, 2)));
extern void bzero (void *__s, size_t __n) throw () __attribute__ ((__nonnull__ (1)));
extern char *index (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *rindex (const char *__s, int __c)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern int ffs (int __i) throw () __attribute__ ((__const__));
extern int ffsl (long int __l) throw () __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     throw () __attribute__ ((__const__));
extern int strcasecmp (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
}
extern void explicit_bzero (void *__s, size_t __n) throw () __attribute__ ((__nonnull__ (1)));
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *strsignal (int __sig) throw ();
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int strverscmp (const char *__s1, const char *__s2)
     throw () __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strfry (char *__string) throw () __attribute__ ((__nonnull__ (1)));
extern void *memfrob (void *__s, size_t __n) throw () __attribute__ ((__nonnull__ (1)));
extern "C++" char *basename (char *__filename)
     throw () __asm ("basename") __attribute__ ((__nonnull__ (1)));
extern "C++" const char *basename (const char *__filename)
     throw () __asm ("basename") __attribute__ ((__nonnull__ (1)));
}
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
extern "C" 
{
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
extern const unsigned short int **__ctype_b_loc (void)
     throw () __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     throw () __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     throw () __attribute__ ((__const__));
extern int isalnum (int) throw ();
extern int isalpha (int) throw ();
extern int iscntrl (int) throw ();
extern int isdigit (int) throw ();
extern int islower (int) throw ();
extern int isgraph (int) throw ();
extern int isprint (int) throw ();
extern int ispunct (int) throw ();
extern int isspace (int) throw ();
extern int isupper (int) throw ();
extern int isxdigit (int) throw ();
extern int tolower (int __c) throw ();
extern int toupper (int __c) throw ();
extern int isblank (int) throw ();
extern int isctype (int __c, int __mask) throw ();
extern int isascii (int __c) throw ();
extern int toascii (int __c) throw ();
extern int _toupper (int) throw ();
extern int _tolower (int) throw ();
extern int isalnum_l (int, locale_t) throw ();
extern int isalpha_l (int, locale_t) throw ();
extern int iscntrl_l (int, locale_t) throw ();
extern int isdigit_l (int, locale_t) throw ();
extern int islower_l (int, locale_t) throw ();
extern int isgraph_l (int, locale_t) throw ();
extern int isprint_l (int, locale_t) throw ();
extern int ispunct_l (int, locale_t) throw ();
extern int isspace_l (int, locale_t) throw ();
extern int isupper_l (int, locale_t) throw ();
extern int isxdigit_l (int, locale_t) throw ();
extern int isblank_l (int, locale_t) throw ();
extern int __tolower_l (int __c, locale_t __l) throw ();
extern int tolower_l (int __c, locale_t __l) throw ();
extern int __toupper_l (int __c, locale_t __l) throw ();
extern int toupper_l (int __c, locale_t __l) throw ();
}
extern "C" 
{
struct flock
  
{
    short int l_type;
    short int l_whence;
    __off_t l_start;
    __off_t l_len;
    __pid_t l_pid;
  };
struct flock64
  
{
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };
typedef long unsigned int size_t;
struct iovec
  
{
    void *iov_base;
    size_t iov_len;
  };
enum __pid_type
  
{
    F_OWNER_TID = 0,
    F_OWNER_PID,
    F_OWNER_PGRP,
    F_OWNER_GID = F_OWNER_PGRP
  };
struct f_owner_ex
  
{
    enum __pid_type type;
    __pid_t pid;
  };
struct file_handle
{
  unsigned int handle_bytes;
  int handle_type;
  unsigned char f_handle[0];
};
extern "C" 
{
extern __ssize_t readahead (int __fd, __off64_t __offset, size_t __count)
    throw ();
extern int sync_file_range (int __fd, __off64_t __offset, __off64_t __count,
       unsigned int __flags);
extern __ssize_t vmsplice (int __fdout, const struct iovec *__iov,
      size_t __count, unsigned int __flags);
extern __ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
    __off64_t *__offout, size_t __len,
    unsigned int __flags);
extern __ssize_t tee (int __fdin, int __fdout, size_t __len,
        unsigned int __flags);
extern int fallocate (int __fd, int __mode, __off_t __offset, __off_t __len);
extern int fallocate64 (int __fd, int __mode, __off64_t __offset,
   __off64_t __len);
extern int name_to_handle_at (int __dfd, const char *__name,
         struct file_handle *__handle, int *__mnt_id,
         int __flags) throw ();
extern int open_by_handle_at (int __mountdirfd, struct file_handle *__handle,
         int __flags);
}
struct stat
  
{
    __dev_t st_dev;
    __ino_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
struct stat64
  
{
    __dev_t st_dev;
    __ino64_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt64_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
extern int fcntl (int __fd, int __cmd, ...);
extern int fcntl64 (int __fd, int __cmd, ...);
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int open64 (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
extern int openat64 (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int creat64 (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int lockf (int __fd, int __cmd, off_t __len);
extern int lockf64 (int __fd, int __cmd, off64_t __len);
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) throw ();
extern int posix_fadvise64 (int __fd, off64_t __offset, off64_t __len,
       int __advise) throw ();
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
extern int posix_fallocate64 (int __fd, off64_t __offset, off64_t __len);
}
extern "C" 
{
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) throw () __attribute__ ((__nonnull__ (2)));
extern int stat64 (const char *__restrict __file,
     struct stat64 *__restrict __buf) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int fstat64 (int __fd, struct stat64 *__buf) throw () __attribute__ ((__nonnull__ (2)));
extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     throw () __attribute__ ((__nonnull__ (2, 3)));
extern int fstatat64 (int __fd, const char *__restrict __file,
        struct stat64 *__restrict __buf, int __flag)
     throw () __attribute__ ((__nonnull__ (2, 3)));
extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int lstat64 (const char *__restrict __file,
      struct stat64 *__restrict __buf)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int chmod (const char *__file, __mode_t __mode)
     throw () __attribute__ ((__nonnull__ (1)));
extern int lchmod (const char *__file, __mode_t __mode)
     throw () __attribute__ ((__nonnull__ (1)));
extern int fchmod (int __fd, __mode_t __mode) throw ();
extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     throw () __attribute__ ((__nonnull__ (2))) ;
extern __mode_t umask (__mode_t __mask) throw ();
extern __mode_t getumask (void) throw ();
extern int mkdir (const char *__path, __mode_t __mode)
     throw () __attribute__ ((__nonnull__ (1)));
extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     throw () __attribute__ ((__nonnull__ (2)));
extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     throw () __attribute__ ((__nonnull__ (1)));
extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) throw () __attribute__ ((__nonnull__ (2)));
extern int mkfifo (const char *__path, __mode_t __mode)
     throw () __attribute__ ((__nonnull__ (1)));
extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     throw () __attribute__ ((__nonnull__ (2)));
extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     throw () __attribute__ ((__nonnull__ (2)));
extern int futimens (int __fd, const struct timespec __times[2]) throw ();
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     throw () __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, const char *__filename,
      struct stat *__stat_buf) throw () __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, const char *__filename,
       struct stat *__stat_buf) throw () __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, const char *__filename,
         struct stat *__stat_buf, int __flag)
     throw () __attribute__ ((__nonnull__ (3, 4)));
extern int __fxstat64 (int __ver, int __fildes, struct stat64 *__stat_buf)
     throw () __attribute__ ((__nonnull__ (3)));
extern int __xstat64 (int __ver, const char *__filename,
        struct stat64 *__stat_buf) throw () __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat64 (int __ver, const char *__filename,
         struct stat64 *__stat_buf) throw () __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat64 (int __ver, int __fildes, const char *__filename,
    struct stat64 *__stat_buf, int __flag)
     throw () __attribute__ ((__nonnull__ (3, 4)));
extern int __xmknod (int __ver, const char *__path, __mode_t __mode,
       __dev_t *__dev) throw () __attribute__ ((__nonnull__ (2, 4)));
extern int __xmknodat (int __ver, int __fd, const char *__path,
         __mode_t __mode, __dev_t *__dev)
     throw () __attribute__ ((__nonnull__ (3, 5)));
typedef __signed__ char __s8;
typedef unsigned char __u8;
typedef __signed__ short __s16;
typedef unsigned short __u16;
typedef __signed__ int __s32;
typedef unsigned int __u32;
__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
typedef struct 
{
 unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;
typedef void (*__kernel_sighandler_t)(int);
typedef int __kernel_key_t;
typedef int __kernel_mqd_t;
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;
typedef unsigned long __kernel_old_dev_t;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_ino_t;
typedef unsigned int __kernel_mode_t;
typedef int __kernel_pid_t;
typedef int __kernel_ipc_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef int __kernel_daddr_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;
typedef struct 
{
 int val[2];
} __kernel_fsid_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef __u16 __sum16;
typedef __u32 __wsum;
typedef unsigned __poll_t;
struct statx_timestamp 
{
 __s64 tv_sec;
 __u32 tv_nsec;
 __s32 __reserved;
};
struct statx 
{
 __u32 stx_mask;
 __u32 stx_blksize;
 __u64 stx_attributes;
 __u32 stx_nlink;
 __u32 stx_uid;
 __u32 stx_gid;
 __u16 stx_mode;
 __u16 __spare0[1];
 __u64 stx_ino;
 __u64 stx_size;
 __u64 stx_blocks;
 __u64 stx_attributes_mask;
 struct statx_timestamp stx_atime;
 struct statx_timestamp stx_btime;
 struct statx_timestamp stx_ctime;
 struct statx_timestamp stx_mtime;
 __u32 stx_rdev_major;
 __u32 stx_rdev_minor;
 __u32 stx_dev_major;
 __u32 stx_dev_minor;
 __u64 __spare2[14];
};
extern "C" 
{
int statx (int __dirfd, const char *__restrict __path, int __flags,
           unsigned int __mask, struct statx *__restrict __buf)
  throw () __attribute__ ((__nonnull__ (2, 5)));
}
}
extern "C++" 
{
namespace std
{
  class exception
  
{
  public:
    exception() noexcept { }
{
    virtual ~exception() noexcept;
    exception(const exception&) = default;
    exception& operator=(const exception&) = default;
    exception(exception&&) = default;
    exception& operator=(exception&&) = default;
    virtual const char*
    what() const noexcept;
  };
}
}
extern "C++" 
{
namespace std
{
  class bad_exception : public exception
  
{
  public:
    bad_exception() noexcept { }
{
    virtual ~bad_exception() noexcept;
    virtual const char*
    what() const noexcept;
  };
  typedef void (*terminate_handler) ();
  typedef void (*unexpected_handler) ();
  terminate_handler set_terminate(terminate_handler) noexcept;
  terminate_handler get_terminate() noexcept;
  void terminate() noexcept __attribute__ ((__noreturn__));
  unexpected_handler set_unexpected(unexpected_handler) noexcept;
  unexpected_handler get_unexpected() noexcept;
  void unexpected() __attribute__ ((__noreturn__));
  bool uncaught_exception() noexcept __attribute__ ((__pure__));
  int uncaught_exceptions() noexcept __attribute__ ((__pure__));
}
namespace __gnu_cxx
{
  void __verbose_terminate_handler();
}
}
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef long unsigned int rsize_t;
namespace std
{
  class type_info;
}
namespace __cxxabiv1
{
  struct __cxa_refcounted_exception;
  extern "C"
    
{
      void*
      __cxa_allocate_exception(size_t) noexcept;
      void
      __cxa_free_exception(void*) noexcept;
      __cxa_refcounted_exception*
      __cxa_init_primary_exception(void *object, std::type_info *tinfo,
                void ( *dest) (void *)) noexcept;
    }
}
namespace std
{
  size_t
  _Hash_bytes(const void* __ptr, size_t __len, size_t __seed);
  size_t
  _Fnv_hash_bytes(const void* __ptr, size_t __len, size_t __seed);
}
extern "C++" 
{
namespace __cxxabiv1
{
  class __class_type_info;
}
namespace std
{
  class type_info
  
{
  public:
    virtual ~type_info();
    const char* name() const noexcept
    { return __name[0] == '*' ? __name + 1 : __name; }
{
    bool before(const type_info& __arg) const noexcept
    { return (__name[0] == '*' && __arg.__name[0] == '*')
{
 ? __name < __arg.__name
 : __builtin_strcmp (__name, __arg.__name) < 0; }
    bool operator==(const type_info& __arg) const noexcept
    
{
      return ((__name == __arg.__name)
       || (__name[0] != '*' &&
    __builtin_strcmp (__name, __arg.__name) == 0));
    }
    bool operator!=(const type_info& __arg) const noexcept
    { return !operator==(__arg); }
{
    size_t hash_code() const noexcept
    
{
      return _Hash_bytes(name(), __builtin_strlen(name()),
    static_cast<size_t>(0xc70f6907UL));
    }
    virtual bool __is_pointer_p() const;
    virtual bool __is_function_p() const;
    virtual bool __do_catch(const type_info *__thr_type, void **__thr_obj,
       unsigned __outer) const;
    virtual bool __do_upcast(const __cxxabiv1::__class_type_info *__target,
        void **__obj_ptr) const;
  protected:
    const char *__name;
    explicit type_info(const char *__n): __name(__n) { }
{
  private:
    type_info& operator=(const type_info&);
    type_info(const type_info&);
  };
  class bad_cast : public exception
  
{
  public:
    bad_cast() noexcept { }
{
    virtual ~bad_cast() noexcept;
    virtual const char* what() const noexcept;
  };
  class bad_typeid : public exception
  
{
  public:
    bad_typeid () noexcept { }
{
    virtual ~bad_typeid() noexcept;
    virtual const char* what() const noexcept;
  };
}
}
extern "C++" 
{
namespace std
{
  class type_info;
  namespace __exception_ptr
  
{
    class exception_ptr;
  }
  using __exception_ptr::exception_ptr;
  exception_ptr current_exception() noexcept;
  template<typename _Ex>
  exception_ptr make_exception_ptr(_Ex) noexcept;
  void rethrow_exception(exception_ptr) __attribute__ ((__noreturn__));
  namespace __exception_ptr
  
{
    using std::rethrow_exception;
    class exception_ptr
    
{
      void* _M_exception_object;
      explicit exception_ptr(void* __e) noexcept;
      void _M_addref() noexcept;
      void _M_release() noexcept;
      void *_M_get() const noexcept __attribute__ ((__pure__));
      friend exception_ptr std::current_exception() noexcept;
      friend void std::rethrow_exception(exception_ptr);
      template<typename _Ex>
      friend exception_ptr std::make_exception_ptr(_Ex) noexcept;
    public:
      exception_ptr() noexcept;
      exception_ptr(const exception_ptr&) noexcept;
      exception_ptr(nullptr_t) noexcept
      : _M_exception_object(0)
      { }
{
      exception_ptr(exception_ptr&& __o) noexcept
      : _M_exception_object(__o._M_exception_object)
      { __o._M_exception_object = 0; }
{
      exception_ptr&
      operator=(const exception_ptr&) noexcept;
      exception_ptr&
      operator=(exception_ptr&& __o) noexcept
      
{
        exception_ptr(static_cast<exception_ptr&&>(__o)).swap(*this);
        return *this;
      }
      ~exception_ptr() noexcept;
      void
      swap(exception_ptr&) noexcept;
      explicit operator bool() const
      { return _M_exception_object; }
{
      friend bool
      operator==(const exception_ptr&, const exception_ptr&)
 noexcept __attribute__ ((__pure__));
      const class std::type_info*
      __cxa_exception_type() const noexcept
 __attribute__ ((__pure__));
    };
    bool
    operator==(const exception_ptr&, const exception_ptr&)
      noexcept __attribute__ ((__pure__));
    bool
    operator!=(const exception_ptr&, const exception_ptr&)
      noexcept __attribute__ ((__pure__));
    inline void
    swap(exception_ptr& __lhs, exception_ptr& __rhs)
    { __lhs.swap(__rhs); }
{
    template<typename _Ex>
      inline void
      __dest_thunk(void* __x)
      { static_cast<_Ex*>(__x)->~_Ex(); }
{
  }
  template<typename _Ex>
    exception_ptr
    make_exception_ptr(_Ex __ex) noexcept
    
{
      void* __e = __cxxabiv1::__cxa_allocate_exception(sizeof(_Ex));
      (void) __cxxabiv1::__cxa_init_primary_exception(
   __e, const_cast<std::type_info*>(&typeid(__ex)),
   __exception_ptr::__dest_thunk<_Ex>);
      try
 
{
          ::new (__e) _Ex(__ex);
          return exception_ptr(__e);
 }
      catch(...)
 
{
   __cxxabiv1::__cxa_free_exception(__e);
   return current_exception();
 }
    }
}
}
namespace std __attribute__ ((__visibility__ ("default")))
{
  template<typename _Tp>
    inline constexpr _Tp*
    __addressof(_Tp& __r) noexcept
    { return __builtin_addressof(__r); }
{
}
namespace std __attribute__ ((__visibility__ ("default")))
{
  template<typename _Tp, _Tp __v>
    struct integral_constant
    
{
      static constexpr _Tp value = __v;
      typedef _Tp value_type;
      typedef integral_constant<_Tp, __v> type;
      constexpr operator value_type() const noexcept { return value; }
{
      constexpr value_type operator()() const noexcept { return value; }
{
    };
  template<typename _Tp, _Tp __v>
    constexpr _Tp integral_constant<_Tp, __v>::value;
  typedef integral_constant<bool, true> true_type;
  typedef integral_constant<bool, false> false_type;
  template<bool __v>
    using __bool_constant = integral_constant<bool, __v>;
  template<bool, typename, typename>
    struct conditional;
  template<typename...>
    struct __or_;
  template<>
    struct __or_<>
    : public false_type
    { };
{
  template<typename _B1>
    struct __or_<_B1>
    : public _B1
    { };
{
  template<typename _B1, typename _B2>
    struct __or_<_B1, _B2>
    : public conditional<_B1::value, _B1, _B2>::type
    { };
{
  template<typename _B1, typename _B2, typename _B3, typename... _Bn>
    struct __or_<_B1, _B2, _B3, _Bn...>
    : public conditional<_B1::value, _B1, __or_<_B2, _B3, _Bn...>>::type
    { };
{
  template<typename...>
    struct __and_;
  template<>
    struct __and_<>
    : public true_type
    { };
{
  template<typename _B1>
    struct __and_<_B1>
    : public _B1
    { };
{
  template<typename _B1, typename _B2>
    struct __and_<_B1, _B2>
    : public conditional<_B1::value, _B2, _B1>::type
    { };
{
  template<typename _B1, typename _B2, typename _B3, typename... _Bn>
    struct __and_<_B1, _B2, _B3, _Bn...>
    : public conditional<_B1::value, __and_<_B2, _B3, _Bn...>, _B1>::type
    { };
{
  template<typename _Pp>
    struct __not_
    : public __bool_constant<!bool(_Pp::value)>
    { };
{
  template<typename _Tp>
    struct __success_type
    { typedef _Tp type; };
{
  struct __failure_type
  { };
{
  template<typename>
    struct remove_cv;
  template<typename>
    struct __is_void_helper
    : public false_type { };
{
  template<>
    struct __is_void_helper<void>
    : public true_type { };
{
  template<typename _Tp>
    struct is_void
    : public __is_void_helper<typename remove_cv<_Tp>::type>::type
    { };
{
  template<typename>
    struct __is_integral_helper
    : public false_type { };
{
  template<>
    struct __is_integral_helper<bool>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<char>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<signed char>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<unsigned char>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<wchar_t>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<char16_t>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<char32_t>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<short>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<unsigned short>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<int>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<unsigned int>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<long>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<unsigned long>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<long long>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<unsigned long long>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<__int128>
    : public true_type { };
{
  template<>
    struct __is_integral_helper<unsigned __int128>
    : public true_type { };
{
  template<typename _Tp>
    struct is_integral
    : public __is_integral_helper<typename remove_cv<_Tp>::type>::type
    { };
{
  template<typename>
    struct __is_floating_point_helper
    : public false_type { };
{
  template<>
    struct __is_floating_point_helper<float>
    : public true_type { };
{
  template<>
    struct __is_floating_point_helper<double>
    : public true_type { };
{
  template<>
    struct __is_floating_point_helper<long double>
    : public true_type { };
{
  template<>
    struct __is_floating_point_helper<__float128>
    : public true_type { };
{
  template<typename _Tp>
    struct is_floating_point
    : public __is_floating_point_helper<typename remove_cv<_Tp>::type>::type
    { };
{
  template<typename>
    struct is_array
    : public false_type { };
{
  template<typename _Tp, std::size_t _Size>
    struct is_array<_Tp[_Size]>
    : public true_type { };
{
  template<typename _Tp>
    struct is_array<_Tp[]>
    : public true_type { };
{
  template<typename>
    struct __is_pointer_helper
    : public false_type { };
{
  template<typename _Tp>
    struct __is_pointer_helper<_Tp*>
    : public true_type { };
{
  template<typename _Tp>
    struct is_pointer
    : public __is_pointer_helper<typename remove_cv<_Tp>::type>::type
    { };
{
  template<typename>
    struct is_lvalue_reference
    : public false_type { };
{
  template<typename _Tp>
    struct is_lvalue_reference<_Tp&>
    : public true_type { };
{
  template<typename>
    struct is_rvalue_reference
    : public false_type { };
{
  template<typename _Tp>
    struct is_rvalue_reference<_Tp&&>
    : public true_type { };
{
  template<typename>
    struct is_function;
  template<typename>
    struct __is_member_object_pointer_helper
    : public false_type { };
{
  template<typename _Tp, typename _Cp>
    struct __is_member_object_pointer_helper<_Tp _Cp::*>
    : public __not_<is_function<_Tp>>::type { };
{
  template<typename _Tp>
    struct is_member_object_pointer
    : public __is_member_object_pointer_helper<
    typename remove_cv<_Tp>::type>::type
    { };
{
  template<typename>
    struct __is_member_function_pointer_helper
    : public false_type { };
{
  template<typename _Tp, typename _Cp>
    struct __is_member_function_pointer_helper<_Tp _Cp::*>
    : public is_function<_Tp>::type { };
{
  template<typename _Tp>
    struct is_member_function_pointer
    : public __is_member_function_pointer_helper<
    typename remove_cv<_Tp>::type>::type
    { };
{
  template<typename _Tp>
    struct is_enum
    : public integral_constant<bool, __is_enum(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_union
    : public integral_constant<bool, __is_union(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_class
    : public integral_constant<bool, __is_class(_Tp)>
    { };
{
  template<typename>
    struct is_function
    : public false_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) & >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) && >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) & >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) && >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) const >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) const & >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) const && >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) const >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) const & >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) const && >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) volatile >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) volatile & >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) volatile && >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) volatile >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) volatile & >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) volatile && >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) const volatile >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) const volatile & >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes...) const volatile && >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) const volatile >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) const volatile & >
    : public true_type { };
{
  template<typename _Res, typename... _ArgTypes >
    struct is_function<_Res(_ArgTypes......) const volatile && >
    : public true_type { };
{
  template<typename>
    struct __is_null_pointer_helper
    : public false_type { };
{
  template<>
    struct __is_null_pointer_helper<std::nullptr_t>
    : public true_type { };
{
  template<typename _Tp>
    struct is_null_pointer
    : public __is_null_pointer_helper<typename remove_cv<_Tp>::type>::type
    { };
{
  template<typename _Tp>
    struct __is_nullptr_t
    : public is_null_pointer<_Tp>
    { };
{
  template<typename _Tp>
    struct is_reference
    : public __or_<is_lvalue_reference<_Tp>,
                   is_rvalue_reference<_Tp>>::type
    { };
{
  template<typename _Tp>
    struct is_arithmetic
    : public __or_<is_integral<_Tp>, is_floating_point<_Tp>>::type
    { };
{
  template<typename _Tp>
    struct is_fundamental
    : public __or_<is_arithmetic<_Tp>, is_void<_Tp>,
     is_null_pointer<_Tp>>::type
    { };
{
  template<typename _Tp>
    struct is_object
    : public __not_<__or_<is_function<_Tp>, is_reference<_Tp>,
                          is_void<_Tp>>>::type
    { };
{
  template<typename>
    struct is_member_pointer;
  template<typename _Tp>
    struct is_scalar
    : public __or_<is_arithmetic<_Tp>, is_enum<_Tp>, is_pointer<_Tp>,
                   is_member_pointer<_Tp>, is_null_pointer<_Tp>>::type
    { };
{
  template<typename _Tp>
    struct is_compound
    : public __not_<is_fundamental<_Tp>>::type { };
{
  template<typename _Tp>
    struct __is_member_pointer_helper
    : public false_type { };
{
  template<typename _Tp, typename _Cp>
    struct __is_member_pointer_helper<_Tp _Cp::*>
    : public true_type { };
{
  template<typename _Tp>
    struct is_member_pointer
    : public __is_member_pointer_helper<typename remove_cv<_Tp>::type>::type
    { };
{
  template<typename _Tp>
    struct __is_referenceable
    : public __or_<is_object<_Tp>, is_reference<_Tp>>::type
    { };
{
  template<typename _Res, typename... _Args >
    struct __is_referenceable<_Res(_Args...) >
    : public true_type
    { };
{
  template<typename _Res, typename... _Args >
    struct __is_referenceable<_Res(_Args......) >
    : public true_type
    { };
{
  template<typename>
    struct is_const
    : public false_type { };
{
  template<typename _Tp>
    struct is_const<_Tp const>
    : public true_type { };
{
  template<typename>
    struct is_volatile
    : public false_type { };
{
  template<typename _Tp>
    struct is_volatile<_Tp volatile>
    : public true_type { };
{
  template<typename _Tp>
    struct is_trivial
    : public integral_constant<bool, __is_trivial(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_trivially_copyable
    : public integral_constant<bool, __is_trivially_copyable(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_standard_layout
    : public integral_constant<bool, __is_standard_layout(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_pod
    : public integral_constant<bool, __is_pod(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_literal_type
    : public integral_constant<bool, __is_literal_type(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_empty
    : public integral_constant<bool, __is_empty(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_polymorphic
    : public integral_constant<bool, __is_polymorphic(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_final
    : public integral_constant<bool, __is_final(_Tp)>
    { };
{
  template<typename _Tp>
    struct is_abstract
    : public integral_constant<bool, __is_abstract(_Tp)>
    { };
{
  template<typename _Tp,
    bool = is_arithmetic<_Tp>::value>
    struct __is_signed_helper
    : public false_type { };
{
  template<typename _Tp>
    struct __is_signed_helper<_Tp, true>
    : public integral_constant<bool, _Tp(-1) < _Tp(0)>
    { };
{
  template<typename _Tp>
    struct is_signed
    : public __is_signed_helper<_Tp>::type
    { };
{
  template<typename _Tp>
    struct is_unsigned
    : public __and_<is_arithmetic<_Tp>, __not_<is_signed<_Tp>>>
    { };
{
  template<typename _Tp, typename _Up = _Tp&&>
    _Up
    __declval(int);
  template<typename _Tp>
    _Tp
    __declval(long);
  template<typename _Tp>
    auto declval() noexcept -> decltype(__declval<_Tp>(0));
  template<typename, unsigned = 0>
    struct extent;
  template<typename>
    struct remove_all_extents;
  template<typename _Tp>
    struct __is_array_known_bounds
    : public integral_constant<bool, (extent<_Tp>::value > 0)>
    { };
{
  template<typename _Tp>
    struct __is_array_unknown_bounds
    : public __and_<is_array<_Tp>, __not_<extent<_Tp>>>
    { };
{
  struct __do_is_destructible_impl
  
{
    template<typename _Tp, typename = decltype(declval<_Tp&>().~_Tp())>
      static true_type __test(int);
    template<typename>
      static false_type __test(...);
  };
  template<typename _Tp>
    struct __is_destructible_impl
    : public __do_is_destructible_impl
    
{
      typedef decltype(__test<_Tp>(0)) type;
    };
  template<typename _Tp,
           bool = __or_<is_void<_Tp>,
                        __is_array_unknown_bounds<_Tp>,
                        is_function<_Tp>>::value,
           bool = __or_<is_reference<_Tp>, is_scalar<_Tp>>::value>
    struct __is_destructible_safe;
  template<typename _Tp>
    struct __is_destructible_safe<_Tp, false, false>
    : public __is_destructible_impl<typename
               remove_all_extents<_Tp>::type>::type
    { };
{
  template<typename _Tp>
    struct __is_destructible_safe<_Tp, true, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_destructible_safe<_Tp, false, true>
    : public true_type { };
{
  template<typename _Tp>
    struct is_destructible
    : public __is_destructible_safe<_Tp>::type
    { };
{
  struct __do_is_nt_destructible_impl
  
{
    template<typename _Tp>
      static __bool_constant<noexcept(declval<_Tp&>().~_Tp())>
      __test(int);
    template<typename>
      static false_type __test(...);
  };
  template<typename _Tp>
    struct __is_nt_destructible_impl
    : public __do_is_nt_destructible_impl
    
{
      typedef decltype(__test<_Tp>(0)) type;
    };
  template<typename _Tp,
           bool = __or_<is_void<_Tp>,
                        __is_array_unknown_bounds<_Tp>,
                        is_function<_Tp>>::value,
           bool = __or_<is_reference<_Tp>, is_scalar<_Tp>>::value>
    struct __is_nt_destructible_safe;
  template<typename _Tp>
    struct __is_nt_destructible_safe<_Tp, false, false>
    : public __is_nt_destructible_impl<typename
               remove_all_extents<_Tp>::type>::type
    { };
{
  template<typename _Tp>
    struct __is_nt_destructible_safe<_Tp, true, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_nt_destructible_safe<_Tp, false, true>
    : public true_type { };
{
  template<typename _Tp>
    struct is_nothrow_destructible
    : public __is_nt_destructible_safe<_Tp>::type
    { };
{
  template<typename _Tp, typename... _Args>
    struct is_constructible
      : public __bool_constant<__is_constructible(_Tp, _Args...)>
    { };
{
  template<typename _Tp>
    struct is_default_constructible
    : public is_constructible<_Tp>::type
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_copy_constructible_impl;
  template<typename _Tp>
    struct __is_copy_constructible_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_copy_constructible_impl<_Tp, true>
    : public is_constructible<_Tp, const _Tp&>
    { };
{
  template<typename _Tp>
    struct is_copy_constructible
    : public __is_copy_constructible_impl<_Tp>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_move_constructible_impl;
  template<typename _Tp>
    struct __is_move_constructible_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_move_constructible_impl<_Tp, true>
    : public is_constructible<_Tp, _Tp&&>
    { };
{
  template<typename _Tp>
    struct is_move_constructible
    : public __is_move_constructible_impl<_Tp>
    { };
{
  template<typename _Tp>
    struct __is_nt_default_constructible_atom
    : public integral_constant<bool, noexcept(_Tp())>
    { };
{
  template<typename _Tp, bool = is_array<_Tp>::value>
    struct __is_nt_default_constructible_impl;
  template<typename _Tp>
    struct __is_nt_default_constructible_impl<_Tp, true>
    : public __and_<__is_array_known_bounds<_Tp>,
      __is_nt_default_constructible_atom<typename
                      remove_all_extents<_Tp>::type>>
    { };
{
  template<typename _Tp>
    struct __is_nt_default_constructible_impl<_Tp, false>
    : public __is_nt_default_constructible_atom<_Tp>
    { };
{
  template<typename _Tp>
    struct is_nothrow_default_constructible
    : public __and_<is_default_constructible<_Tp>,
                    __is_nt_default_constructible_impl<_Tp>>
    { };
{
  template<typename _Tp, typename... _Args>
    struct __is_nt_constructible_impl
    : public integral_constant<bool, noexcept(_Tp(declval<_Args>()...))>
    { };
{
  template<typename _Tp, typename _Arg>
    struct __is_nt_constructible_impl<_Tp, _Arg>
    : public integral_constant<bool,
                               noexcept(static_cast<_Tp>(declval<_Arg>()))>
    { };
{
  template<typename _Tp>
    struct __is_nt_constructible_impl<_Tp>
    : public is_nothrow_default_constructible<_Tp>
    { };
{
  template<typename _Tp, typename... _Args>
    struct is_nothrow_constructible
    : public __and_<is_constructible<_Tp, _Args...>,
      __is_nt_constructible_impl<_Tp, _Args...>>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_nothrow_copy_constructible_impl;
  template<typename _Tp>
    struct __is_nothrow_copy_constructible_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_nothrow_copy_constructible_impl<_Tp, true>
    : public is_nothrow_constructible<_Tp, const _Tp&>
    { };
{
  template<typename _Tp>
    struct is_nothrow_copy_constructible
    : public __is_nothrow_copy_constructible_impl<_Tp>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_nothrow_move_constructible_impl;
  template<typename _Tp>
    struct __is_nothrow_move_constructible_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_nothrow_move_constructible_impl<_Tp, true>
    : public is_nothrow_constructible<_Tp, _Tp&&>
    { };
{
  template<typename _Tp>
    struct is_nothrow_move_constructible
    : public __is_nothrow_move_constructible_impl<_Tp>
    { };
{
  template<typename _Tp, typename _Up>
    struct is_assignable
      : public __bool_constant<__is_assignable(_Tp, _Up)>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_copy_assignable_impl;
  template<typename _Tp>
    struct __is_copy_assignable_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_copy_assignable_impl<_Tp, true>
    : public is_assignable<_Tp&, const _Tp&>
    { };
{
  template<typename _Tp>
    struct is_copy_assignable
    : public __is_copy_assignable_impl<_Tp>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_move_assignable_impl;
  template<typename _Tp>
    struct __is_move_assignable_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_move_assignable_impl<_Tp, true>
    : public is_assignable<_Tp&, _Tp&&>
    { };
{
  template<typename _Tp>
    struct is_move_assignable
    : public __is_move_assignable_impl<_Tp>
    { };
{
  template<typename _Tp, typename _Up>
    struct __is_nt_assignable_impl
    : public integral_constant<bool, noexcept(declval<_Tp>() = declval<_Up>())>
    { };
{
  template<typename _Tp, typename _Up>
    struct is_nothrow_assignable
    : public __and_<is_assignable<_Tp, _Up>,
      __is_nt_assignable_impl<_Tp, _Up>>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_nt_copy_assignable_impl;
  template<typename _Tp>
    struct __is_nt_copy_assignable_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_nt_copy_assignable_impl<_Tp, true>
    : public is_nothrow_assignable<_Tp&, const _Tp&>
    { };
{
  template<typename _Tp>
    struct is_nothrow_copy_assignable
    : public __is_nt_copy_assignable_impl<_Tp>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_nt_move_assignable_impl;
  template<typename _Tp>
    struct __is_nt_move_assignable_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_nt_move_assignable_impl<_Tp, true>
    : public is_nothrow_assignable<_Tp&, _Tp&&>
    { };
{
  template<typename _Tp>
    struct is_nothrow_move_assignable
    : public __is_nt_move_assignable_impl<_Tp>
    { };
{
  template<typename _Tp, typename... _Args>
    struct is_trivially_constructible
    : public __bool_constant<__is_trivially_constructible(_Tp, _Args...)>
    { };
{
  template<typename _Tp>
    struct is_trivially_default_constructible
    : public is_trivially_constructible<_Tp>::type
    { };
{
  struct __do_is_implicitly_default_constructible_impl
  
{
    template <typename _Tp>
    static void __helper(const _Tp&);
    template <typename _Tp>
    static true_type __test(const _Tp&,
                            decltype(__helper<const _Tp&>({}))* = 0);
{
    static false_type __test(...);
  };
  template<typename _Tp>
    struct __is_implicitly_default_constructible_impl
    : public __do_is_implicitly_default_constructible_impl
    
{
      typedef decltype(__test(declval<_Tp>())) type;
    };
  template<typename _Tp>
    struct __is_implicitly_default_constructible_safe
    : public __is_implicitly_default_constructible_impl<_Tp>::type
    { };
{
  template <typename _Tp>
    struct __is_implicitly_default_constructible
    : public __and_<is_default_constructible<_Tp>,
      __is_implicitly_default_constructible_safe<_Tp>>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_trivially_copy_constructible_impl;
  template<typename _Tp>
    struct __is_trivially_copy_constructible_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_trivially_copy_constructible_impl<_Tp, true>
    : public __and_<is_copy_constructible<_Tp>,
      integral_constant<bool,
   __is_trivially_constructible(_Tp, const _Tp&)>>
    { };
{
  template<typename _Tp>
    struct is_trivially_copy_constructible
    : public __is_trivially_copy_constructible_impl<_Tp>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_trivially_move_constructible_impl;
  template<typename _Tp>
    struct __is_trivially_move_constructible_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_trivially_move_constructible_impl<_Tp, true>
    : public __and_<is_move_constructible<_Tp>,
      integral_constant<bool,
   __is_trivially_constructible(_Tp, _Tp&&)>>
    { };
{
  template<typename _Tp>
    struct is_trivially_move_constructible
    : public __is_trivially_move_constructible_impl<_Tp>
    { };
{
  template<typename _Tp, typename _Up>
    struct is_trivially_assignable
    : public __bool_constant<__is_trivially_assignable(_Tp, _Up)>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_trivially_copy_assignable_impl;
  template<typename _Tp>
    struct __is_trivially_copy_assignable_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_trivially_copy_assignable_impl<_Tp, true>
    : public __bool_constant<__is_trivially_assignable(_Tp&, const _Tp&)>
    { };
{
  template<typename _Tp>
    struct is_trivially_copy_assignable
    : public __is_trivially_copy_assignable_impl<_Tp>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __is_trivially_move_assignable_impl;
  template<typename _Tp>
    struct __is_trivially_move_assignable_impl<_Tp, false>
    : public false_type { };
{
  template<typename _Tp>
    struct __is_trivially_move_assignable_impl<_Tp, true>
    : public __bool_constant<__is_trivially_assignable(_Tp&, _Tp&&)>
    { };
{
  template<typename _Tp>
    struct is_trivially_move_assignable
    : public __is_trivially_move_assignable_impl<_Tp>
    { };
{
  template<typename _Tp>
    struct is_trivially_destructible
    : public __and_<is_destructible<_Tp>,
      __bool_constant<__has_trivial_destructor(_Tp)>>
    { };
{
  template<typename _Tp>
    struct has_virtual_destructor
    : public integral_constant<bool, __has_virtual_destructor(_Tp)>
    { };
{
  template<typename _Tp>
    struct alignment_of
    : public integral_constant<std::size_t, alignof(_Tp)> { };
{
  template<typename>
    struct rank
    : public integral_constant<std::size_t, 0> { };
{
  template<typename _Tp, std::size_t _Size>
    struct rank<_Tp[_Size]>
    : public integral_constant<std::size_t, 1 + rank<_Tp>::value> { };
{
  template<typename _Tp>
    struct rank<_Tp[]>
    : public integral_constant<std::size_t, 1 + rank<_Tp>::value> { };
{
  template<typename, unsigned _Uint>
    struct extent
    : public integral_constant<std::size_t, 0> { };
{
  template<typename _Tp, unsigned _Uint, std::size_t _Size>
    struct extent<_Tp[_Size], _Uint>
    : public integral_constant<std::size_t,
          _Uint == 0 ? _Size : extent<_Tp,
          _Uint - 1>::value>
    { };
{
  template<typename _Tp, unsigned _Uint>
    struct extent<_Tp[], _Uint>
    : public integral_constant<std::size_t,
          _Uint == 0 ? 0 : extent<_Tp,
             _Uint - 1>::value>
    { };
{
  template<typename, typename>
    struct is_same
    : public false_type { };
{
  template<typename _Tp>
    struct is_same<_Tp, _Tp>
    : public true_type { };
{
  template<typename _Base, typename _Derived>
    struct is_base_of
    : public integral_constant<bool, __is_base_of(_Base, _Derived)>
    { };
{
  template<typename _From, typename _To,
           bool = __or_<is_void<_From>, is_function<_To>,
                        is_array<_To>>::value>
    struct __is_convertible_helper
    
{
      typedef typename is_void<_To>::type type;
    };
  template<typename _From, typename _To>
    class __is_convertible_helper<_From, _To, false>
    
{
      template<typename _To1>
 static void __test_aux(_To1) noexcept;
      template<typename _From1, typename _To1,
        typename = decltype(__test_aux<_To1>(std::declval<_From1>()))>
 static true_type
 __test(int);
      template<typename, typename>
 static false_type
 __test(...);
    public:
      typedef decltype(__test<_From, _To>(0)) type;
    };
  template<typename _From, typename _To>
    struct is_convertible
    : public __is_convertible_helper<_From, _To>::type
    { };
{
  template<typename _Tp>
    struct remove_const
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct remove_const<_Tp const>
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct remove_volatile
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct remove_volatile<_Tp volatile>
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct remove_cv
    
{
      typedef typename
      remove_const<typename remove_volatile<_Tp>::type>::type type;
    };
  template<typename _Tp>
    struct add_const
    { typedef _Tp const type; };
{
  template<typename _Tp>
    struct add_volatile
    { typedef _Tp volatile type; };
{
  template<typename _Tp>
    struct add_cv
    
{
      typedef typename
      add_const<typename add_volatile<_Tp>::type>::type type;
    };
  template<typename _Tp>
    using remove_const_t = typename remove_const<_Tp>::type;
  template<typename _Tp>
    using remove_volatile_t = typename remove_volatile<_Tp>::type;
  template<typename _Tp>
    using remove_cv_t = typename remove_cv<_Tp>::type;
  template<typename _Tp>
    using add_const_t = typename add_const<_Tp>::type;
  template<typename _Tp>
    using add_volatile_t = typename add_volatile<_Tp>::type;
  template<typename _Tp>
    using add_cv_t = typename add_cv<_Tp>::type;
  template<typename _Tp>
    struct remove_reference
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct remove_reference<_Tp&>
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct remove_reference<_Tp&&>
    { typedef _Tp type; };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __add_lvalue_reference_helper
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct __add_lvalue_reference_helper<_Tp, true>
    { typedef _Tp& type; };
{
  template<typename _Tp>
    struct add_lvalue_reference
    : public __add_lvalue_reference_helper<_Tp>
    { };
{
  template<typename _Tp, bool = __is_referenceable<_Tp>::value>
    struct __add_rvalue_reference_helper
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct __add_rvalue_reference_helper<_Tp, true>
    { typedef _Tp&& type; };
{
  template<typename _Tp>
    struct add_rvalue_reference
    : public __add_rvalue_reference_helper<_Tp>
    { };
{
  template<typename _Tp>
    using remove_reference_t = typename remove_reference<_Tp>::type;
  template<typename _Tp>
    using add_lvalue_reference_t = typename add_lvalue_reference<_Tp>::type;
  template<typename _Tp>
    using add_rvalue_reference_t = typename add_rvalue_reference<_Tp>::type;
  template<typename _Unqualified, bool _IsConst, bool _IsVol>
    struct __cv_selector;
  template<typename _Unqualified>
    struct __cv_selector<_Unqualified, false, false>
    { typedef _Unqualified __type; };
{
  template<typename _Unqualified>
    struct __cv_selector<_Unqualified, false, true>
    { typedef volatile _Unqualified __type; };
{
  template<typename _Unqualified>
    struct __cv_selector<_Unqualified, true, false>
    { typedef const _Unqualified __type; };
{
  template<typename _Unqualified>
    struct __cv_selector<_Unqualified, true, true>
    { typedef const volatile _Unqualified __type; };
{
  template<typename _Qualified, typename _Unqualified,
    bool _IsConst = is_const<_Qualified>::value,
    bool _IsVol = is_volatile<_Qualified>::value>
    class __match_cv_qualifiers
    
{
      typedef __cv_selector<_Unqualified, _IsConst, _IsVol> __match;
    public:
      typedef typename __match::__type __type;
    };
  template<typename _Tp>
    struct __make_unsigned
    { typedef _Tp __type; };
{
  template<>
    struct __make_unsigned<char>
    { typedef unsigned char __type; };
{
  template<>
    struct __make_unsigned<signed char>
    { typedef unsigned char __type; };
{
  template<>
    struct __make_unsigned<short>
    { typedef unsigned short __type; };
{
  template<>
    struct __make_unsigned<int>
    { typedef unsigned int __type; };
{
  template<>
    struct __make_unsigned<long>
    { typedef unsigned long __type; };
{
  template<>
    struct __make_unsigned<long long>
    { typedef unsigned long long __type; };
{
  template<>
    struct __make_unsigned<__int128>
    { typedef unsigned __int128 __type; };
{
  template<typename _Tp,
    bool _IsInt = is_integral<_Tp>::value,
    bool _IsEnum = is_enum<_Tp>::value>
    class __make_unsigned_selector;
  template<typename _Tp>
    class __make_unsigned_selector<_Tp, true, false>
    
{
      using __unsigned_type
 = typename __make_unsigned<typename remove_cv<_Tp>::type>::__type;
    public:
      using __type
 = typename __match_cv_qualifiers<_Tp, __unsigned_type>::__type;
    };
  class __make_unsigned_selector_base
  
{
  protected:
    template<typename...> struct _List { };
{
    template<typename _Tp, typename... _Up>
      struct _List<_Tp, _Up...> : _List<_Up...>
      { static constexpr size_t __size = sizeof(_Tp); };
{
    template<size_t _Sz, typename _Tp, bool = (_Sz <= _Tp::__size)>
      struct __select;
    template<size_t _Sz, typename _Uint, typename... _UInts>
      struct __select<_Sz, _List<_Uint, _UInts...>, true>
      { using __type = _Uint; };
{
    template<size_t _Sz, typename _Uint, typename... _UInts>
      struct __select<_Sz, _List<_Uint, _UInts...>, false>
      : __select<_Sz, _List<_UInts...>>
      { };
{
  };
  template<typename _Tp>
    class __make_unsigned_selector<_Tp, false, true>
    : __make_unsigned_selector_base
    
{
      using _UInts = _List<unsigned char, unsigned short, unsigned int,
      unsigned long, unsigned long long>;
      using __unsigned_type = typename __select<sizeof(_Tp), _UInts>::__type;
    public:
      using __type
 = typename __match_cv_qualifiers<_Tp, __unsigned_type>::__type;
    };
  template<>
    struct __make_unsigned<wchar_t>
    
{
      using __type
 = typename __make_unsigned_selector<wchar_t, false, true>::__type;
    };
  template<>
    struct __make_unsigned<char16_t>
    
{
      using __type
 = typename __make_unsigned_selector<char16_t, false, true>::__type;
    };
  template<>
    struct __make_unsigned<char32_t>
    
{
      using __type
 = typename __make_unsigned_selector<char32_t, false, true>::__type;
    };
  template<typename _Tp>
    struct make_unsigned
    { typedef typename __make_unsigned_selector<_Tp>::__type type; };
{
  template<>
    struct make_unsigned<bool>;
  template<typename _Tp>
    struct __make_signed
    { typedef _Tp __type; };
{
  template<>
    struct __make_signed<char>
    { typedef signed char __type; };
{
  template<>
    struct __make_signed<unsigned char>
    { typedef signed char __type; };
{
  template<>
    struct __make_signed<unsigned short>
    { typedef signed short __type; };
{
  template<>
    struct __make_signed<unsigned int>
    { typedef signed int __type; };
{
  template<>
    struct __make_signed<unsigned long>
    { typedef signed long __type; };
{
  template<>
    struct __make_signed<unsigned long long>
    { typedef signed long long __type; };
{
  template<>
    struct __make_signed<unsigned __int128>
    { typedef __int128 __type; };
{
  template<typename _Tp,
    bool _IsInt = is_integral<_Tp>::value,
    bool _IsEnum = is_enum<_Tp>::value>
    class __make_signed_selector;
  template<typename _Tp>
    class __make_signed_selector<_Tp, true, false>
    
{
      using __signed_type
 = typename __make_signed<typename remove_cv<_Tp>::type>::__type;
    public:
      using __type
 = typename __match_cv_qualifiers<_Tp, __signed_type>::__type;
    };
  template<typename _Tp>
    class __make_signed_selector<_Tp, false, true>
    
{
      typedef typename __make_unsigned_selector<_Tp>::__type __unsigned_type;
    public:
      typedef typename __make_signed_selector<__unsigned_type>::__type __type;
    };
  template<>
    struct __make_signed<wchar_t>
    
{
      using __type
 = typename __make_signed_selector<wchar_t, false, true>::__type;
    };
  template<>
    struct __make_signed<char16_t>
    
{
      using __type
 = typename __make_signed_selector<char16_t, false, true>::__type;
    };
  template<>
    struct __make_signed<char32_t>
    
{
      using __type
 = typename __make_signed_selector<char32_t, false, true>::__type;
    };
  template<typename _Tp>
    struct make_signed
    { typedef typename __make_signed_selector<_Tp>::__type type; };
{
  template<>
    struct make_signed<bool>;
  template<typename _Tp>
    using make_signed_t = typename make_signed<_Tp>::type;
  template<typename _Tp>
    using make_unsigned_t = typename make_unsigned<_Tp>::type;
  template<typename _Tp>
    struct remove_extent
    { typedef _Tp type; };
{
  template<typename _Tp, std::size_t _Size>
    struct remove_extent<_Tp[_Size]>
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct remove_extent<_Tp[]>
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct remove_all_extents
    { typedef _Tp type; };
{
  template<typename _Tp, std::size_t _Size>
    struct remove_all_extents<_Tp[_Size]>
    { typedef typename remove_all_extents<_Tp>::type type; };
{
  template<typename _Tp>
    struct remove_all_extents<_Tp[]>
    { typedef typename remove_all_extents<_Tp>::type type; };
{
  template<typename _Tp>
    using remove_extent_t = typename remove_extent<_Tp>::type;
  template<typename _Tp>
    using remove_all_extents_t = typename remove_all_extents<_Tp>::type;
  template<typename _Tp, typename>
    struct __remove_pointer_helper
    { typedef _Tp type; };
{
  template<typename _Tp, typename _Up>
    struct __remove_pointer_helper<_Tp, _Up*>
    { typedef _Up type; };
{
  template<typename _Tp>
    struct remove_pointer
    : public __remove_pointer_helper<_Tp, typename remove_cv<_Tp>::type>
    { };
{
  template<typename _Tp, bool = __or_<__is_referenceable<_Tp>,
          is_void<_Tp>>::value>
    struct __add_pointer_helper
    { typedef _Tp type; };
{
  template<typename _Tp>
    struct __add_pointer_helper<_Tp, true>
    { typedef typename remove_reference<_Tp>::type* type; };
{
  template<typename _Tp>
    struct add_pointer
    : public __add_pointer_helper<_Tp>
    { };
{
  template<typename _Tp>
    using remove_pointer_t = typename remove_pointer<_Tp>::type;
  template<typename _Tp>
    using add_pointer_t = typename add_pointer<_Tp>::type;
  template<std::size_t _Len>
    struct __aligned_storage_msa
    
{
      union __type
      
{
 unsigned char __data[_Len];
 struct __attribute__((__aligned__)) { } __align;
{
      };
    };
  template<std::size_t _Len, std::size_t _Align =
    __alignof__(typename __aligned_storage_msa<_Len>::__type)>
    struct aligned_storage
    
{
      union type
      
{
 unsigned char __data[_Len];
 struct __attribute__((__aligned__((_Align)))) { } __align;
{
      };
    };
  template <typename... _Types>
    struct __strictest_alignment
    
{
      static const size_t _S_alignment = 0;
      static const size_t _S_size = 0;
    };
  template <typename _Tp, typename... _Types>
    struct __strictest_alignment<_Tp, _Types...>
    
{
      static const size_t _S_alignment =
        alignof(_Tp) > __strictest_alignment<_Types...>::_S_alignment
 ? alignof(_Tp) : __strictest_alignment<_Types...>::_S_alignment;
      static const size_t _S_size =
        sizeof(_Tp) > __strictest_alignment<_Types...>::_S_size
 ? sizeof(_Tp) : __strictest_alignment<_Types...>::_S_size;
    };
  template <size_t _Len, typename... _Types>
    struct aligned_union
    
{
    private:
      static_assert(sizeof...(_Types) != 0, "At least one type is required");
      using __strictest = __strictest_alignment<_Types...>;
      static const size_t _S_len = _Len > __strictest::_S_size
 ? _Len : __strictest::_S_size;
    public:
      static const size_t alignment_value = __strictest::_S_alignment;
      typedef typename aligned_storage<_S_len, alignment_value>::type type;
    };
  template <size_t _Len, typename... _Types>
    const size_t aligned_union<_Len, _Types...>::alignment_value;
  template<typename _Up,
    bool _IsArray = is_array<_Up>::value,
    bool _IsFunction = is_function<_Up>::value>
    struct __decay_selector;
  template<typename _Up>
    struct __decay_selector<_Up, false, false>
    { typedef typename remove_cv<_Up>::type __type; };
{
  template<typename _Up>
    struct __decay_selector<_Up, true, false>
    { typedef typename remove_extent<_Up>::type* __type; };
{
  template<typename _Up>
    struct __decay_selector<_Up, false, true>
    { typedef typename add_pointer<_Up>::type __type; };
{
  template<typename _Tp>
    class decay
    
{
      typedef typename remove_reference<_Tp>::type __remove_type;
    public:
      typedef typename __decay_selector<__remove_type>::__type type;
    };
  template<typename _Tp>
    class reference_wrapper;
  template<typename _Tp>
    struct __strip_reference_wrapper
    
{
      typedef _Tp __type;
    };
  template<typename _Tp>
    struct __strip_reference_wrapper<reference_wrapper<_Tp> >
    
{
      typedef _Tp& __type;
    };
  template<typename _Tp>
    struct __decay_and_strip
    
{
      typedef typename __strip_reference_wrapper<
 typename decay<_Tp>::type>::__type __type;
    };
  template<bool, typename _Tp = void>
    struct enable_if
    { };
{
  template<typename _Tp>
    struct enable_if<true, _Tp>
    { typedef _Tp type; };
{
  template<typename... _Cond>
    using _Require = typename enable_if<__and_<_Cond...>::value>::type;
  template<bool _Cond, typename _Iftrue, typename _Iffalse>
    struct conditional
    { typedef _Iftrue type; };
{
  template<typename _Iftrue, typename _Iffalse>
    struct conditional<false, _Iftrue, _Iffalse>
    { typedef _Iffalse type; };
{
  template<typename... _Tp>
    struct common_type;
  struct __do_common_type_impl
  
{
    template<typename _Tp, typename _Up>
      static __success_type<typename decay<decltype
       (true ? std::declval<_Tp>()
        : std::declval<_Up>())>::type> _S_test(int);
    template<typename, typename>
      static __failure_type _S_test(...);
  };
  template<typename _Tp, typename _Up>
    struct __common_type_impl
    : private __do_common_type_impl
    
{
      typedef decltype(_S_test<_Tp, _Up>(0)) type;
    };
  struct __do_member_type_wrapper
  
{
    template<typename _Tp>
      static __success_type<typename _Tp::type> _S_test(int);
    template<typename>
      static __failure_type _S_test(...);
  };
  template<typename _Tp>
    struct __member_type_wrapper
    : private __do_member_type_wrapper
    
{
      typedef decltype(_S_test<_Tp>(0)) type;
    };
  template<typename _CTp, typename... _Args>
    struct __expanded_common_type_wrapper
    
{
      typedef common_type<typename _CTp::type, _Args...> type;
    };
  template<typename... _Args>
    struct __expanded_common_type_wrapper<__failure_type, _Args...>
    { typedef __failure_type type; };
{
  template<>
    struct common_type<>
    { };
{
  template<typename _Tp>
    struct common_type<_Tp>
    : common_type<_Tp, _Tp>
    { };
{
  template<typename _Tp, typename _Up>
    struct common_type<_Tp, _Up>
    : public __common_type_impl<_Tp, _Up>::type
    { };
{
  template<typename _Tp, typename _Up, typename... _Vp>
    struct common_type<_Tp, _Up, _Vp...>
    : public __expanded_common_type_wrapper<typename __member_type_wrapper<
               common_type<_Tp, _Up>>::type, _Vp...>::type
    { };
{
  template<typename _Tp, bool = is_enum<_Tp>::value>
    struct __underlying_type_impl
    
{
      using type = __underlying_type(_Tp);
    };
  template<typename _Tp>
    struct __underlying_type_impl<_Tp, false>
    { };
{
  template<typename _Tp>
    struct underlying_type
    : public __underlying_type_impl<_Tp>
    { };
{
  template<typename _Tp>
    struct __declval_protector
    
{
      static const bool __stop = false;
    };
  template<typename _Tp>
    auto declval() noexcept -> decltype(__declval<_Tp>(0))
    
{
      static_assert(__declval_protector<_Tp>::__stop,
      "declval() must not be used!");
      return __declval<_Tp>(0);
    }
  template<typename _Tp>
    using __remove_cvref_t
     = typename remove_cv<typename remove_reference<_Tp>::type>::type;
  template<typename _Signature>
    class result_of;
  struct __invoke_memfun_ref { };
{
  struct __invoke_memfun_deref { };
{
  struct __invoke_memobj_ref { };
{
  struct __invoke_memobj_deref { };
{
  struct __invoke_other { };
{
  template<typename _Tp, typename _Tag>
    struct __result_of_success : __success_type<_Tp>
    { using __invoke_type = _Tag; };
{
  struct __result_of_memfun_ref_impl
  
{
    template<typename _Fp, typename _Tp1, typename... _Args>
      static __result_of_success<decltype(
      (std::declval<_Tp1>().*std::declval<_Fp>())(std::declval<_Args>()...)
      ), __invoke_memfun_ref> _S_test(int);
    template<typename...>
      static __failure_type _S_test(...);
  };
  template<typename _MemPtr, typename _Arg, typename... _Args>
    struct __result_of_memfun_ref
    : private __result_of_memfun_ref_impl
    
{
      typedef decltype(_S_test<_MemPtr, _Arg, _Args...>(0)) type;
    };
  struct __result_of_memfun_deref_impl
  
{
    template<typename _Fp, typename _Tp1, typename... _Args>
      static __result_of_success<decltype(
      ((*std::declval<_Tp1>()).*std::declval<_Fp>())(std::declval<_Args>()...)
      ), __invoke_memfun_deref> _S_test(int);
    template<typename...>
      static __failure_type _S_test(...);
  };
  template<typename _MemPtr, typename _Arg, typename... _Args>
    struct __result_of_memfun_deref
    : private __result_of_memfun_deref_impl
    
{
      typedef decltype(_S_test<_MemPtr, _Arg, _Args...>(0)) type;
    };
  struct __result_of_memobj_ref_impl
  
{
    template<typename _Fp, typename _Tp1>
      static __result_of_success<decltype(
      std::declval<_Tp1>().*std::declval<_Fp>()
      ), __invoke_memobj_ref> _S_test(int);
    template<typename, typename>
      static __failure_type _S_test(...);
  };
  template<typename _MemPtr, typename _Arg>
    struct __result_of_memobj_ref
    : private __result_of_memobj_ref_impl
    
{
      typedef decltype(_S_test<_MemPtr, _Arg>(0)) type;
    };
  struct __result_of_memobj_deref_impl
  
{
    template<typename _Fp, typename _Tp1>
      static __result_of_success<decltype(
      (*std::declval<_Tp1>()).*std::declval<_Fp>()
      ), __invoke_memobj_deref> _S_test(int);
    template<typename, typename>
      static __failure_type _S_test(...);
  };
  template<typename _MemPtr, typename _Arg>
    struct __result_of_memobj_deref
    : private __result_of_memobj_deref_impl
    
{
      typedef decltype(_S_test<_MemPtr, _Arg>(0)) type;
    };
  template<typename _MemPtr, typename _Arg>
    struct __result_of_memobj;
  template<typename _Res, typename _Class, typename _Arg>
    struct __result_of_memobj<_Res _Class::*, _Arg>
    
{
      typedef __remove_cvref_t<_Arg> _Argval;
      typedef _Res _Class::* _MemPtr;
      typedef typename conditional<__or_<is_same<_Argval, _Class>,
        is_base_of<_Class, _Argval>>::value,
        __result_of_memobj_ref<_MemPtr, _Arg>,
        __result_of_memobj_deref<_MemPtr, _Arg>
      >::type::type type;
    };
  template<typename _MemPtr, typename _Arg, typename... _Args>
    struct __result_of_memfun;
  template<typename _Res, typename _Class, typename _Arg, typename... _Args>
    struct __result_of_memfun<_Res _Class::*, _Arg, _Args...>
    
{
      typedef typename remove_reference<_Arg>::type _Argval;
      typedef _Res _Class::* _MemPtr;
      typedef typename conditional<is_base_of<_Class, _Argval>::value,
        __result_of_memfun_ref<_MemPtr, _Arg, _Args...>,
        __result_of_memfun_deref<_MemPtr, _Arg, _Args...>
      >::type::type type;
    };
  template<typename _Tp, typename _Up = __remove_cvref_t<_Tp>>
    struct __inv_unwrap
    
{
      using type = _Tp;
    };
  template<typename _Tp, typename _Up>
    struct __inv_unwrap<_Tp, reference_wrapper<_Up>>
    
{
      using type = _Up&;
    };
  template<bool, bool, typename _Functor, typename... _ArgTypes>
    struct __result_of_impl
    
{
      typedef __failure_type type;
    };
  template<typename _MemPtr, typename _Arg>
    struct __result_of_impl<true, false, _MemPtr, _Arg>
    : public __result_of_memobj<typename decay<_MemPtr>::type,
    typename __inv_unwrap<_Arg>::type>
    { };
{
  template<typename _MemPtr, typename _Arg, typename... _Args>
    struct __result_of_impl<false, true, _MemPtr, _Arg, _Args...>
    : public __result_of_memfun<typename decay<_MemPtr>::type,
    typename __inv_unwrap<_Arg>::type, _Args...>
    { };
{
  struct __result_of_other_impl
  
{
    template<typename _Fn, typename... _Args>
      static __result_of_success<decltype(
      std::declval<_Fn>()(std::declval<_Args>()...)
      ), __invoke_other> _S_test(int);
    template<typename...>
      static __failure_type _S_test(...);
  };
  template<typename _Functor, typename... _ArgTypes>
    struct __result_of_impl<false, false, _Functor, _ArgTypes...>
    : private __result_of_other_impl
    
{
      typedef decltype(_S_test<_Functor, _ArgTypes...>(0)) type;
    };
  template<typename _Functor, typename... _ArgTypes>
    struct __invoke_result
    : public __result_of_impl<
        is_member_object_pointer<
          typename remove_reference<_Functor>::type
        >::value,
        is_member_function_pointer<
          typename remove_reference<_Functor>::type
        >::value,
 _Functor, _ArgTypes...
      >::type
    { };
{
  template<typename _Functor, typename... _ArgTypes>
    struct result_of<_Functor(_ArgTypes...)>
    : public __invoke_result<_Functor, _ArgTypes...>
    { };
{
  template<size_t _Len, size_t _Align =
     __alignof__(typename __aligned_storage_msa<_Len>::__type)>
    using aligned_storage_t = typename aligned_storage<_Len, _Align>::type;
  template <size_t _Len, typename... _Types>
    using aligned_union_t = typename aligned_union<_Len, _Types...>::type;
  template<typename _Tp>
    using decay_t = typename decay<_Tp>::type;
  template<bool _Cond, typename _Tp = void>
    using enable_if_t = typename enable_if<_Cond, _Tp>::type;
  template<bool _Cond, typename _Iftrue, typename _Iffalse>
    using conditional_t = typename conditional<_Cond, _Iftrue, _Iffalse>::type;
  template<typename... _Tp>
    using common_type_t = typename common_type<_Tp...>::type;
  template<typename _Tp>
    using underlying_type_t = typename underlying_type<_Tp>::type;
  template<typename _Tp>
    using result_of_t = typename result_of<_Tp>::type;
  template<bool _Cond, typename _Tp = void>
    using __enable_if_t = typename enable_if<_Cond, _Tp>::type;
  template<typename...> using __void_t = void;
  template<typename...> using void_t = void;
  template<typename _Default, typename _AlwaysVoid,
    template<typename...> class _Op, typename... _Args>
    struct __detector
    
{
      using value_t = false_type;
      using type = _Default;
    };
  template<typename _Default, template<typename...> class _Op,
     typename... _Args>
    struct __detector<_Default, __void_t<_Op<_Args...>>, _Op, _Args...>
    
{
      using value_t = true_type;
      using type = _Op<_Args...>;
    };
  template<typename _Default, template<typename...> class _Op,
    typename... _Args>
    using __detected_or = __detector<_Default, void, _Op, _Args...>;
  template<typename _Default, template<typename...> class _Op,
    typename... _Args>
    using __detected_or_t
      = typename __detected_or<_Default, _Op, _Args...>::type;
  template <typename _Tp>
    struct __is_swappable;
  template <typename _Tp>
    struct __is_nothrow_swappable;
  template<typename... _Elements>
    class tuple;
  template<typename>
    struct __is_tuple_like_impl : false_type
    { };
{
  template<typename... _Tps>
    struct __is_tuple_like_impl<tuple<_Tps...>> : true_type
    { };
{
  template<typename _Tp>
    struct __is_tuple_like
    : public __is_tuple_like_impl<__remove_cvref_t<_Tp>>::type
    { };
{
  template<typename _Tp>
    inline
    typename enable_if<__and_<__not_<__is_tuple_like<_Tp>>,
         is_move_constructible<_Tp>,
         is_move_assignable<_Tp>>::value>::type
    swap(_Tp&, _Tp&)
    noexcept(__and_<is_nothrow_move_constructible<_Tp>,
             is_nothrow_move_assignable<_Tp>>::value);
  template<typename _Tp, size_t _Nm>
    inline
    typename enable_if<__is_swappable<_Tp>::value>::type
    swap(_Tp (&__a)[_Nm], _Tp (&__b)[_Nm])
    noexcept(__is_nothrow_swappable<_Tp>::value);
  namespace __swappable_details 
{
    using std::swap;
    struct __do_is_swappable_impl
    
{
      template<typename _Tp, typename
               = decltype(swap(std::declval<_Tp&>(), std::declval<_Tp&>()))>
        static true_type __test(int);
      template<typename>
        static false_type __test(...);
    };
    struct __do_is_nothrow_swappable_impl
    
{
      template<typename _Tp>
        static __bool_constant<
          noexcept(swap(std::declval<_Tp&>(), std::declval<_Tp&>()))
        > __test(int);
      template<typename>
        static false_type __test(...);
    };
  }
  template<typename _Tp>
    struct __is_swappable_impl
    : public __swappable_details::__do_is_swappable_impl
    
{
      typedef decltype(__test<_Tp>(0)) type;
    };
  template<typename _Tp>
    struct __is_nothrow_swappable_impl
    : public __swappable_details::__do_is_nothrow_swappable_impl
    
{
      typedef decltype(__test<_Tp>(0)) type;
    };
  template<typename _Tp>
    struct __is_swappable
    : public __is_swappable_impl<_Tp>::type
    { };
{
  template<typename _Tp>
    struct __is_nothrow_swappable
    : public __is_nothrow_swappable_impl<_Tp>::type
    { };
{
  template<typename _Tp>
    struct is_swappable
    : public __is_swappable_impl<_Tp>::type
    { };
{
  template<typename _Tp>
    struct is_nothrow_swappable
    : public __is_nothrow_swappable_impl<_Tp>::type
    { };
{
  template<typename _Tp>
                      constexpr bool is_swappable_v =
      is_swappable<_Tp>::value;
  template<typename _Tp>
                      constexpr bool is_nothrow_swappable_v =
      is_nothrow_swappable<_Tp>::value;
  namespace __swappable_with_details 
{
    using std::swap;
    struct __do_is_swappable_with_impl
    
{
      template<typename _Tp, typename _Up, typename
               = decltype(swap(std::declval<_Tp>(), std::declval<_Up>())),
               typename
               = decltype(swap(std::declval<_Up>(), std::declval<_Tp>()))>
        static true_type __test(int);
      template<typename, typename>
        static false_type __test(...);
    };
    struct __do_is_nothrow_swappable_with_impl
    
{
      template<typename _Tp, typename _Up>
        static __bool_constant<
          noexcept(swap(std::declval<_Tp>(), std::declval<_Up>()))
          &&
          noexcept(swap(std::declval<_Up>(), std::declval<_Tp>()))
        > __test(int);
      template<typename, typename>
        static false_type __test(...);
    };
  }
  template<typename _Tp, typename _Up>
    struct __is_swappable_with_impl
    : public __swappable_with_details::__do_is_swappable_with_impl
    
{
      typedef decltype(__test<_Tp, _Up>(0)) type;
    };
  template<typename _Tp>
    struct __is_swappable_with_impl<_Tp&, _Tp&>
    : public __swappable_details::__do_is_swappable_impl
    
{
      typedef decltype(__test<_Tp&>(0)) type;
    };
  template<typename _Tp, typename _Up>
    struct __is_nothrow_swappable_with_impl
    : public __swappable_with_details::__do_is_nothrow_swappable_with_impl
    
{
      typedef decltype(__test<_Tp, _Up>(0)) type;
    };
  template<typename _Tp>
    struct __is_nothrow_swappable_with_impl<_Tp&, _Tp&>
    : public __swappable_details::__do_is_nothrow_swappable_impl
    
{
      typedef decltype(__test<_Tp&>(0)) type;
    };
  template<typename _Tp, typename _Up>
    struct is_swappable_with
    : public __is_swappable_with_impl<_Tp, _Up>::type
    { };
{
  template<typename _Tp, typename _Up>
    struct is_nothrow_swappable_with
    : public __is_nothrow_swappable_with_impl<_Tp, _Up>::type
    { };
{
  template<typename _Tp, typename _Up>
                      constexpr bool is_swappable_with_v =
      is_swappable_with<_Tp, _Up>::value;
  template<typename _Tp, typename _Up>
                      constexpr bool is_nothrow_swappable_with_v =
      is_nothrow_swappable_with<_Tp, _Up>::value;
  template<typename _Result, typename _Ret,
    bool = is_void<_Ret>::value, typename = void>
    struct __is_invocable_impl : false_type { };
{
  template<typename _Result, typename _Ret>
    struct __is_invocable_impl<_Result, _Ret,
                                true,
          __void_t<typename _Result::type>>
    : true_type
    { };
{
 template<typename _Result, typename _Ret>
    struct __is_invocable_impl<_Result, _Ret,
                                false,
          __void_t<typename _Result::type>>
    
{
    private:
      static typename _Result::type _S_get();
      template<typename _Tp>
 static void _S_conv(_Tp);
      template<typename _Tp, typename = decltype(_S_conv<_Tp>(_S_get()))>
 static true_type
 _S_test(int);
      template<typename _Tp>
 static false_type
 _S_test(...);
    public:
      using type = decltype(_S_test<_Ret>(1));
    };
 template<typename _Fn, typename... _ArgTypes>
    struct __is_invocable
    : __is_invocable_impl<__invoke_result<_Fn, _ArgTypes...>, void>::type
    { };
{
  template<typename _Fn, typename _Tp, typename... _Args>
    constexpr bool __call_is_nt(__invoke_memfun_ref)
    
{
      using _Up = typename __inv_unwrap<_Tp>::type;
      return noexcept((std::declval<_Up>().*std::declval<_Fn>())(
     std::declval<_Args>()...));
    }
  template<typename _Fn, typename _Tp, typename... _Args>
    constexpr bool __call_is_nt(__invoke_memfun_deref)
    
{
      return noexcept(((*std::declval<_Tp>()).*std::declval<_Fn>())(
     std::declval<_Args>()...));
    }
  template<typename _Fn, typename _Tp>
    constexpr bool __call_is_nt(__invoke_memobj_ref)
    
{
      using _Up = typename __inv_unwrap<_Tp>::type;
      return noexcept(std::declval<_Up>().*std::declval<_Fn>());
    }
  template<typename _Fn, typename _Tp>
    constexpr bool __call_is_nt(__invoke_memobj_deref)
    
{
      return noexcept((*std::declval<_Tp>()).*std::declval<_Fn>());
    }
  template<typename _Fn, typename... _Args>
    constexpr bool __call_is_nt(__invoke_other)
    
{
      return noexcept(std::declval<_Fn>()(std::declval<_Args>()...));
    }
  template<typename _Result, typename _Fn, typename... _Args>
    struct __call_is_nothrow
    : __bool_constant<
 std::__call_is_nt<_Fn, _Args...>(typename _Result::__invoke_type{})
{
      >
    { };
{
  template<typename _Fn, typename... _Args>
    using __call_is_nothrow_
      = __call_is_nothrow<__invoke_result<_Fn, _Args...>, _Fn, _Args...>;
  template<typename _Fn, typename... _Args>
    struct __is_nothrow_invocable
    : __and_<__is_invocable<_Fn, _Args...>,
             __call_is_nothrow_<_Fn, _Args...>>::type
    { };
{
  struct __nonesuch 
{
    __nonesuch() = delete;
    ~__nonesuch() = delete;
    __nonesuch(__nonesuch const&) = delete;
    void operator=(__nonesuch const&) = delete;
  };
}
namespace std __attribute__ ((__visibility__ ("default")))
{
  template<typename _Tp>
    constexpr _Tp&&
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
    { return static_cast<_Tp&&>(__t); }
{
  template<typename _Tp>
    constexpr _Tp&&
    forward(typename std::remove_reference<_Tp>::type&& __t) noexcept
    
{
      static_assert(!std::is_lvalue_reference<_Tp>::value, "template argument"
      " substituting _Tp is an lvalue reference type");
      return static_cast<_Tp&&>(__t);
    }
  template<typename _Tp>
    constexpr typename std::remove_reference<_Tp>::type&&
    move(_Tp&& __t) noexcept
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
{
  template<typename _Tp>
    struct __move_if_noexcept_cond
    : public __and_<__not_<is_nothrow_move_constructible<_Tp>>,
                    is_copy_constructible<_Tp>>::type { };
{
  template<typename _Tp>
    constexpr typename
    conditional<__move_if_noexcept_cond<_Tp>::value, const _Tp&, _Tp&&>::type
    move_if_noexcept(_Tp& __x) noexcept
    { return std::move(__x); }
{
  template<typename _Tp>
    inline _Tp*
    addressof(_Tp& __r) noexcept
    { return std::__addressof(__r); }
{
  template<typename _Tp>
    const _Tp* addressof(const _Tp&&) = delete;
  template <typename _Tp, typename _Up = _Tp>
    inline _Tp
    __exchange(_Tp& __obj, _Up&& __new_val)
    
{
      _Tp __old_val = std::move(__obj);
      __obj = std::forward<_Up>(__new_val);
      return __old_val;
    }
  template<typename _Tp>
    inline
    typename enable_if<__and_<__not_<__is_tuple_like<_Tp>>,
         is_move_constructible<_Tp>,
         is_move_assignable<_Tp>>::value>::type
    swap(_Tp& __a, _Tp& __b)
    noexcept(__and_<is_nothrow_move_constructible<_Tp>,
             is_nothrow_move_assignable<_Tp>>::value)
    
{
      _Tp __tmp = std::move(__a);
      __a = std::move(__b);
      __b = std::move(__tmp);
    }
  template<typename _Tp, size_t _Nm>
    inline
    typename enable_if<__is_swappable<_Tp>::value>::type
    swap(_Tp (&__a)[_Nm], _Tp (&__b)[_Nm])
    noexcept(__is_nothrow_swappable<_Tp>::value)
    
{
      for (size_t __n = 0; __n < _Nm; ++__n)
 swap(__a[__n], __b[__n]);
    }
}
extern "C++" 
{
namespace std
{
  class nested_exception
  
{
    exception_ptr _M_ptr;
  public:
    nested_exception() noexcept : _M_ptr(current_exception()) { }
{
    nested_exception(const nested_exception&) noexcept = default;
    nested_exception& operator=(const nested_exception&) noexcept = default;
    virtual ~nested_exception() noexcept;
    [[noreturn]]
    void
    rethrow_nested() const
    
{
      if (_M_ptr)
 rethrow_exception(_M_ptr);
      std::terminate();
    }
    exception_ptr
    nested_ptr() const noexcept
    { return _M_ptr; }
{
  };
  template<typename _Except>
    struct _Nested_exception : public _Except, public nested_exception
    
{
      explicit _Nested_exception(const _Except& __ex)
      : _Except(__ex)
      { }
{
      explicit _Nested_exception(_Except&& __ex)
      : _Except(static_cast<_Except&&>(__ex))
      { }
{
    };
  template<typename _Tp>
    [[noreturn]]
    inline void
    __throw_with_nested_impl(_Tp&& __t, true_type)
    
{
      using _Up = typename remove_reference<_Tp>::type;
      throw _Nested_exception<_Up>{std::forward<_Tp>(__t)};
{
    }
  template<typename _Tp>
    [[noreturn]]
    inline void
    __throw_with_nested_impl(_Tp&& __t, false_type)
    { throw std::forward<_Tp>(__t); }
{
  template<typename _Tp>
    [[noreturn]]
    inline void
    throw_with_nested(_Tp&& __t)
    
{
      using _Up = typename decay<_Tp>::type;
      using _CopyConstructible
 = __and_<is_copy_constructible<_Up>, is_move_constructible<_Up>>;
      static_assert(_CopyConstructible::value,
   "throw_with_nested argument must be CopyConstructible");
      using __nest = __and_<is_class<_Up>, __bool_constant<!__is_final(_Up)>,
       __not_<is_base_of<nested_exception, _Up>>>;
      std::__throw_with_nested_impl(std::forward<_Tp>(__t), __nest{});
{
    }
  template<typename _Tp>
    using __rethrow_if_nested_cond = typename enable_if<
      __and_<is_polymorphic<_Tp>,
      __or_<__not_<is_base_of<nested_exception, _Tp>>,
     is_convertible<_Tp*, nested_exception*>>>::value
    >::type;
  template<typename _Ex>
    inline __rethrow_if_nested_cond<_Ex>
    __rethrow_if_nested_impl(const _Ex* __ptr)
    
{
      if (auto __ne_ptr = dynamic_cast<const nested_exception*>(__ptr))
 __ne_ptr->rethrow_nested();
    }
  inline void
  __rethrow_if_nested_impl(const void*)
  { }
{
  template<typename _Ex>
    inline void
    rethrow_if_nested(const _Ex& __ex)
    { std::__rethrow_if_nested_impl(std::__addressof(__ex)); }
{
}
}
extern "C++" 
{
namespace std
{
  class bad_alloc : public exception
  
{
  public:
    bad_alloc() throw() { }
{
    bad_alloc(const bad_alloc&) = default;
    bad_alloc& operator=(const bad_alloc&) = default;
    virtual ~bad_alloc() throw();
    virtual const char* what() const throw();
  };
  class bad_array_new_length : public bad_alloc
  
{
  public:
    bad_array_new_length() throw() { }
{
    virtual ~bad_array_new_length() throw();
    virtual const char* what() const throw();
  };
  struct nothrow_t
  
{
    explicit nothrow_t() = default;
  };
  extern const nothrow_t nothrow;
  typedef void (*new_handler)();
  new_handler set_new_handler(new_handler) throw();
  new_handler get_new_handler() noexcept;
}
                   void* operator new(std::size_t)
  __attribute__((__externally_visible__));
                   void* operator new[](std::size_t)
  __attribute__((__externally_visible__));
void operator delete(void*) noexcept
  __attribute__((__externally_visible__));
void operator delete[](void*) noexcept
  __attribute__((__externally_visible__));
                   void* operator new(std::size_t, const std::nothrow_t&) noexcept
  __attribute__((__externally_visible__, __malloc__));
                   void* operator new[](std::size_t, const std::nothrow_t&) noexcept
  __attribute__((__externally_visible__, __malloc__));
void operator delete(void*, const std::nothrow_t&) noexcept
  __attribute__((__externally_visible__));
void operator delete[](void*, const std::nothrow_t&) noexcept
  __attribute__((__externally_visible__));
                   inline void* operator new(std::size_t, void* __p) noexcept
 return __p; }
{
                   inline void* operator new[](std::size_t, void* __p) noexcept
 return __p; }
{
inline void operator delete (void*, void*) noexcept { }
{
inline void operator delete[](void*, void*) noexcept { }
{
}
class TwoIntsClass
{
    public:
        int intOne;
        int intTwo;
};
class OneIntClass
{
    public:
        int intOne;
};
typedef struct _twoIntsStruct
{
    int intOne;
    int intTwo;
} twoIntsStruct;
extern "C" 
{
extern const int GLOBAL_CONST_TRUE;
extern const int GLOBAL_CONST_FALSE;
extern const int GLOBAL_CONST_FIVE;
extern int globalTrue;
extern int globalFalse;
extern int globalFive;
}
extern "C" 
{
void printLine(const char * line);
void printWLine(const wchar_t * line);
void printIntLine (int intNumber);
void printShortLine (short shortNumber);
void printFloatLine (float floatNumber);
void printLongLine(long longNumber);
void printLongLongLine(int64_t longLongIntNumber);
void printSizeTLine(size_t sizeTNumber);
void printHexCharLine(char charHex);
void printWcharLine(wchar_t wideChar);
void printUnsignedLine(unsigned unsignedNumber);
void printHexUnsignedCharLine(unsigned char unsignedCharacter);
void printDoubleLine(double doubleNumber);
void printStructLine(const twoIntsStruct * structTwoIntsStruct);
void printBytesLine(const unsigned char * bytes, size_t numBytes);
size_t decodeHexChars(unsigned char * bytes, size_t numBytes, const char * hex);
size_t decodeHexWChars(unsigned char * bytes, size_t numBytes, const wchar_t * hex);
int globalReturnsTrue();
int globalReturnsFalse();
int globalReturnsTrueOrFalse();
extern int globalArgc;
extern char** globalArgv;
}
namespace CWE190_Integer_Overflow__int_listen_socket_square_84
{
class CWE190_Integer_Overflow__int_listen_socket_square_84_bad
{
public:
    CWE190_Integer_Overflow__int_listen_socket_square_84_bad(int dataCopy);
    ~CWE190_Integer_Overflow__int_listen_socket_square_84_bad();
private:
    int data;
};
class CWE190_Integer_Overflow__int_listen_socket_square_84_goodG2B
{
public:
    CWE190_Integer_Overflow__int_listen_socket_square_84_goodG2B(int dataCopy);
    ~CWE190_Integer_Overflow__int_listen_socket_square_84_goodG2B();
private:
    int data;
};
class CWE190_Integer_Overflow__int_listen_socket_square_84_goodB2G
{
public:
    CWE190_Integer_Overflow__int_listen_socket_square_84_goodB2G(int dataCopy);
    ~CWE190_Integer_Overflow__int_listen_socket_square_84_goodB2G();
private:
    int data;
};
}
extern "C" 
{
typedef long unsigned int size_t;
typedef long unsigned int size_t;
typedef __socklen_t socklen_t;
enum __socket_type
{
  SOCK_STREAM = 1,
  SOCK_DGRAM = 2,
  SOCK_RAW = 3,
  SOCK_RDM = 4,
  SOCK_SEQPACKET = 5,
  SOCK_DCCP = 6,
  SOCK_PACKET = 10,
  SOCK_CLOEXEC = 02000000,
  SOCK_NONBLOCK = 00004000
};
typedef unsigned short int sa_family_t;
struct sockaddr
  
{
    sa_family_t sa_family;
    char sa_data[14];
  };
struct sockaddr_storage
  
{
    sa_family_t ss_family;
    char __ss_padding[(128 - (sizeof (unsigned short int)) - sizeof (unsigned long int))];
    unsigned long int __ss_align;
  };
enum
  
{
    MSG_OOB = 0x01,
    MSG_PEEK = 0x02,
    MSG_DONTROUTE = 0x04,
    MSG_TRYHARD = MSG_DONTROUTE,
    MSG_CTRUNC = 0x08,
    MSG_PROXY = 0x10,
    MSG_TRUNC = 0x20,
    MSG_DONTWAIT = 0x40,
    MSG_EOR = 0x80,
    MSG_WAITALL = 0x100,
    MSG_FIN = 0x200,
    MSG_SYN = 0x400,
    MSG_CONFIRM = 0x800,
    MSG_RST = 0x1000,
    MSG_ERRQUEUE = 0x2000,
    MSG_NOSIGNAL = 0x4000,
    MSG_MORE = 0x8000,
    MSG_WAITFORONE = 0x10000,
    MSG_BATCH = 0x40000,
    MSG_ZEROCOPY = 0x4000000,
    MSG_FASTOPEN = 0x20000000,
    MSG_CMSG_CLOEXEC = 0x40000000
  };
struct msghdr
  
{
    void *msg_name;
    socklen_t msg_namelen;
    struct iovec *msg_iov;
    size_t msg_iovlen;
    void *msg_control;
    size_t msg_controllen;
    int msg_flags;
  };
struct cmsghdr
  
{
    size_t cmsg_len;
    int cmsg_level;
    int cmsg_type;
    __extension__ unsigned char __cmsg_data [];
  };
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) throw ();
enum
  
{
    SCM_RIGHTS = 0x01
    , SCM_CREDENTIALS = 0x02
  };
struct ucred
{
  pid_t pid;
  uid_t uid;
  gid_t gid;
};
struct linger
  
{
    int l_onoff;
    int l_linger;
  };
struct osockaddr
{
  unsigned short int sa_family;
  unsigned char sa_data[14];
};
enum
{
  SHUT_RD = 0,
  SHUT_WR,
  SHUT_RDWR
};
struct mmsghdr
  
{
    struct msghdr msg_hdr;
    unsigned int msg_len;
  };
extern int socket (int __domain, int __type, int __protocol) throw ();
extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) throw ();
extern int bind (int __fd, const struct sockaddr * __addr, socklen_t __len)
     throw ();
extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) throw ();
extern int connect (int __fd, const struct sockaddr * __addr, socklen_t __len);
extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) throw ();
extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);
extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);
extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, const struct sockaddr * __addr,
         socklen_t __addr_len);
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);
extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);
extern int sendmmsg (int __fd, struct mmsghdr *__vmessages,
       unsigned int __vlen, int __flags);
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
extern int recvmmsg (int __fd, struct mmsghdr *__vmessages,
       unsigned int __vlen, int __flags,
       struct timespec *__tmo);
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) throw ();
extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) throw ();
extern int listen (int __fd, int __n) throw ();
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
extern int accept4 (int __fd, struct sockaddr *__restrict __addr,
      socklen_t *__restrict __addr_len, int __flags);
extern int shutdown (int __fd, int __how) throw ();
extern int sockatmark (int __fd) throw ();
extern int isfdtype (int __fd, int __fdtype) throw ();
}
extern "C" 
{
typedef uint32_t in_addr_t;
struct in_addr
  
{
    in_addr_t s_addr;
  };
struct ip_opts
  
{
    struct in_addr ip_dst;
    char ip_opts[40];
  };
struct ip_mreqn
  
{
    struct in_addr imr_multiaddr;
    struct in_addr imr_address;
    int imr_ifindex;
  };
struct in_pktinfo
  
{
    int ipi_ifindex;
    struct in_addr ipi_spec_dst;
    struct in_addr ipi_addr;
  };
enum
  
{
    IPPROTO_IP = 0,
    IPPROTO_ICMP = 1,
    IPPROTO_IGMP = 2,
    IPPROTO_IPIP = 4,
    IPPROTO_TCP = 6,
    IPPROTO_EGP = 8,
    IPPROTO_PUP = 12,
    IPPROTO_UDP = 17,
    IPPROTO_IDP = 22,
    IPPROTO_TP = 29,
    IPPROTO_DCCP = 33,
    IPPROTO_IPV6 = 41,
    IPPROTO_RSVP = 46,
    IPPROTO_GRE = 47,
    IPPROTO_ESP = 50,
    IPPROTO_AH = 51,
    IPPROTO_MTP = 92,
    IPPROTO_BEETPH = 94,
    IPPROTO_ENCAP = 98,
    IPPROTO_PIM = 103,
    IPPROTO_COMP = 108,
    IPPROTO_SCTP = 132,
    IPPROTO_UDPLITE = 136,
    IPPROTO_MPLS = 137,
    IPPROTO_RAW = 255,
    IPPROTO_MAX
  };
enum
  
{
    IPPROTO_HOPOPTS = 0,
    IPPROTO_ROUTING = 43,
    IPPROTO_FRAGMENT = 44,
    IPPROTO_ICMPV6 = 58,
    IPPROTO_NONE = 59,
    IPPROTO_DSTOPTS = 60,
    IPPROTO_MH = 135
  };
typedef uint16_t in_port_t;
enum
  
{
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,
    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,
    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,
    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,
    IPPORT_RESERVED = 1024,
    IPPORT_USERRESERVED = 5000
  };
struct in6_addr
  
{
    union
      
{
 uint8_t __u6_addr8[16];
 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];
      } __in6_u;
  };
extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
struct sockaddr_in
  
{
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;
    unsigned char sin_zero[sizeof (struct sockaddr)
      - (sizeof (unsigned short int))
      - sizeof (in_port_t)
      - sizeof (struct in_addr)];
  };
struct sockaddr_in6
  
{
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };
struct ip_mreq
  
{
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
  };
struct ip_mreq_source
  
{
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
    struct in_addr imr_sourceaddr;
  };
struct ipv6_mreq
  
{
    struct in6_addr ipv6mr_multiaddr;
    unsigned int ipv6mr_interface;
  };
struct group_req
  
{
    uint32_t gr_interface;
    struct sockaddr_storage gr_group;
  };
struct group_source_req
  
{
    uint32_t gsr_interface;
    struct sockaddr_storage gsr_group;
    struct sockaddr_storage gsr_source;
  };
struct ip_msfilter
  
{
    struct in_addr imsf_multiaddr;
    struct in_addr imsf_interface;
    uint32_t imsf_fmode;
    uint32_t imsf_numsrc;
    struct in_addr imsf_slist[1];
  };
struct group_filter
  
{
    uint32_t gf_interface;
    struct sockaddr_storage gf_group;
    uint32_t gf_fmode;
    uint32_t gf_numsrc;
    struct sockaddr_storage gf_slist[1];
};
extern uint32_t ntohl (uint32_t __netlong) throw () __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     throw () __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     throw () __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     throw () __attribute__ ((__const__));
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) throw ();
extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     throw ();
struct cmsghdr;
struct in6_pktinfo
  
{
    struct in6_addr ipi6_addr;
    unsigned int ipi6_ifindex;
  };
struct ip6_mtuinfo
  
{
    struct sockaddr_in6 ip6m_addr;
    uint32_t ip6m_mtu;
  };
extern int inet6_option_space (int __nbytes)
     throw () __attribute__ ((__deprecated__));
extern int inet6_option_init (void *__bp, struct cmsghdr **__cmsgp,
         int __type) throw () __attribute__ ((__deprecated__));
extern int inet6_option_append (struct cmsghdr *__cmsg,
    const uint8_t *__typep, int __multx,
    int __plusy) throw () __attribute__ ((__deprecated__));
extern uint8_t *inet6_option_alloc (struct cmsghdr *__cmsg, int __datalen,
        int __multx, int __plusy)
     throw () __attribute__ ((__deprecated__));
extern int inet6_option_next (const struct cmsghdr *__cmsg,
         uint8_t **__tptrp)
     throw () __attribute__ ((__deprecated__));
extern int inet6_option_find (const struct cmsghdr *__cmsg,
         uint8_t **__tptrp, int __type)
     throw () __attribute__ ((__deprecated__));
extern int inet6_opt_init (void *__extbuf, socklen_t __extlen) throw ();
extern int inet6_opt_append (void *__extbuf, socklen_t __extlen, int __offset,
        uint8_t __type, socklen_t __len, uint8_t __align,
        void **__databufp) throw ();
extern int inet6_opt_finish (void *__extbuf, socklen_t __extlen, int __offset)
     throw ();
extern int inet6_opt_set_val (void *__databuf, int __offset, void *__val,
         socklen_t __vallen) throw ();
extern int inet6_opt_next (void *__extbuf, socklen_t __extlen, int __offset,
      uint8_t *__typep, socklen_t *__lenp,
      void **__databufp) throw ();
extern int inet6_opt_find (void *__extbuf, socklen_t __extlen, int __offset,
      uint8_t __type, socklen_t *__lenp,
      void **__databufp) throw ();
extern int inet6_opt_get_val (void *__databuf, int __offset, void *__val,
         socklen_t __vallen) throw ();
extern socklen_t inet6_rth_space (int __type, int __segments) throw ();
extern void *inet6_rth_init (void *__bp, socklen_t __bp_len, int __type,
        int __segments) throw ();
extern int inet6_rth_add (void *__bp, const struct in6_addr *__addr) throw ();
extern int inet6_rth_reverse (const void *__in, void *__out) throw ();
extern int inet6_rth_segments (const void *__bp) throw ();
extern struct in6_addr *inet6_rth_getaddr (const void *__bp, int __index)
     throw ();
extern int getipv4sourcefilter (int __s, struct in_addr __interface_addr,
    struct in_addr __group, uint32_t *__fmode,
    uint32_t *__numsrc, struct in_addr *__slist)
     throw ();
extern int setipv4sourcefilter (int __s, struct in_addr __interface_addr,
    struct in_addr __group, uint32_t __fmode,
    uint32_t __numsrc,
    const struct in_addr *__slist)
     throw ();
extern int getsourcefilter (int __s, uint32_t __interface_addr,
       const struct sockaddr *__group,
       socklen_t __grouplen, uint32_t *__fmode,
       uint32_t *__numsrc,
       struct sockaddr_storage *__slist) throw ();
extern int setsourcefilter (int __s, uint32_t __interface_addr,
       const struct sockaddr *__group,
       socklen_t __grouplen, uint32_t __fmode,
       uint32_t __numsrc,
       const struct sockaddr_storage *__slist) throw ();
}
extern "C" 
{
extern in_addr_t inet_addr (const char *__cp) throw ();
extern in_addr_t inet_lnaof (struct in_addr __in) throw ();
extern struct in_addr inet_makeaddr (in_addr_t __net, in_addr_t __host)
     throw ();
extern in_addr_t inet_netof (struct in_addr __in) throw ();
extern in_addr_t inet_network (const char *__cp) throw ();
extern char *inet_ntoa (struct in_addr __in) throw ();
extern int inet_pton (int __af, const char *__restrict __cp,
        void *__restrict __buf) throw ();
extern const char *inet_ntop (int __af, const void *__restrict __cp,
         char *__restrict __buf, socklen_t __len)
     throw ();
extern int inet_aton (const char *__cp, struct in_addr *__inp) throw ();
extern char *inet_neta (in_addr_t __net, char *__buf, size_t __len) throw ();
extern char *inet_net_ntop (int __af, const void *__cp, int __bits,
       char *__buf, size_t __len) throw ();
extern int inet_net_pton (int __af, const char *__cp,
     void *__buf, size_t __len) throw ();
extern unsigned int inet_nsap_addr (const char *__cp,
        unsigned char *__buf, int __len) throw ();
extern char *inet_nsap_ntoa (int __len, const unsigned char *__cp,
        char *__buf) throw ();
}
extern "C" 
{
typedef long unsigned int size_t;
extern int access (const char *__name, int __type) throw () __attribute__ ((__nonnull__ (1)));
extern int euidaccess (const char *__name, int __type)
     throw () __attribute__ ((__nonnull__ (1)));
extern int eaccess (const char *__name, int __type)
     throw () __attribute__ ((__nonnull__ (1)));
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     throw () __attribute__ ((__nonnull__ (2))) ;
extern __off_t lseek (int __fd, __off_t __offset, int __whence) throw ();
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     throw ();
extern int close (int __fd);
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;
extern ssize_t write (int __fd, const void *__buf, size_t __n) ;
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) ;
extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) ;
extern int pipe (int __pipedes[2]) throw () ;
extern int pipe2 (int __pipedes[2], int __flags) throw () ;
extern unsigned int alarm (unsigned int __seconds) throw ();
extern unsigned int sleep (unsigned int __seconds);
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     throw ();
extern int usleep (__useconds_t __useconds);
extern int pause (void);
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) throw () ;
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     throw () __attribute__ ((__nonnull__ (2))) ;
extern int chdir (const char *__path) throw () __attribute__ ((__nonnull__ (1))) ;
extern int fchdir (int __fd) throw () ;
extern char *getcwd (char *__buf, size_t __size) throw () ;
extern char *get_current_dir_name (void) throw ();
extern char *getwd (char *__buf)
     throw () __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;
extern int dup (int __fd) throw () ;
extern int dup2 (int __fd, int __fd2) throw ();
extern int dup3 (int __fd, int __fd2, int __flags) throw ();
extern char **__environ;
extern char **environ;
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) throw () __attribute__ ((__nonnull__ (1, 2)));
extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     throw () __attribute__ ((__nonnull__ (2)));
extern int execv (const char *__path, char *const __argv[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int execle (const char *__path, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int execl (const char *__path, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int execvp (const char *__file, char *const __argv[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int execlp (const char *__file, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int execvpe (const char *__file, char *const __argv[],
      char *const __envp[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern int nice (int __inc) throw () ;
extern void _exit (int __status) __attribute__ ((__noreturn__));
enum
  
{
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS
  };
enum
  
{
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC_XOPEN_SHM,
    _SC_2_CHAR_TERM,
    _SC_2_C_VERSION,
    _SC_2_UPE,
    _SC_XOPEN_XPG2,
    _SC_XOPEN_XPG3,
    _SC_XOPEN_XPG4,
    _SC_CHAR_BIT,
    _SC_CHAR_MAX,
    _SC_CHAR_MIN,
    _SC_INT_MAX,
    _SC_INT_MIN,
    _SC_LONG_BIT,
    _SC_WORD_BIT,
    _SC_MB_LEN_MAX,
    _SC_NZERO,
    _SC_SSIZE_MAX,
    _SC_SCHAR_MAX,
    _SC_SCHAR_MIN,
    _SC_SHRT_MAX,
    _SC_SHRT_MIN,
    _SC_UCHAR_MAX,
    _SC_UINT_MAX,
    _SC_ULONG_MAX,
    _SC_USHRT_MAX,
    _SC_NL_ARGMAX,
    _SC_NL_LANGMAX,
    _SC_NL_MSGMAX,
    _SC_NL_NMAX,
    _SC_NL_SETMAX,
    _SC_NL_TEXTMAX,
    _SC_XBS5_ILP32_OFF32,
    _SC_XBS5_ILP32_OFFBIG,
    _SC_XBS5_LP64_OFF64,
    _SC_XBS5_LPBIG_OFFBIG,
    _SC_XOPEN_LEGACY,
    _SC_XOPEN_REALTIME,
    _SC_XOPEN_REALTIME_THREADS,
    _SC_ADVISORY_INFO,
    _SC_BARRIERS,
    _SC_BASE,
    _SC_C_LANG_SUPPORT,
    _SC_C_LANG_SUPPORT_R,
    _SC_CLOCK_SELECTION,
    _SC_CPUTIME,
    _SC_THREAD_CPUTIME,
    _SC_DEVICE_IO,
    _SC_DEVICE_SPECIFIC,
    _SC_DEVICE_SPECIFIC_R,
    _SC_FD_MGMT,
    _SC_FIFO,
    _SC_PIPE,
    _SC_FILE_ATTRIBUTES,
    _SC_FILE_LOCKING,
    _SC_FILE_SYSTEM,
    _SC_MONOTONIC_CLOCK,
    _SC_MULTI_PROCESS,
    _SC_SINGLE_PROCESS,
    _SC_NETWORKING,
    _SC_READER_WRITER_LOCKS,
    _SC_SPIN_LOCKS,
    _SC_REGEXP,
    _SC_REGEX_VERSION,
    _SC_SHELL,
    _SC_SIGNALS,
    _SC_SPAWN,
    _SC_SPORADIC_SERVER,
    _SC_THREAD_SPORADIC_SERVER,
    _SC_SYSTEM_DATABASE,
    _SC_SYSTEM_DATABASE_R,
    _SC_TIMEOUTS,
    _SC_TYPED_MEMORY_OBJECTS,
    _SC_USER_GROUPS,
    _SC_USER_GROUPS_R,
    _SC_2_PBS,
    _SC_2_PBS_ACCOUNTING,
    _SC_2_PBS_LOCATE,
    _SC_2_PBS_MESSAGE,
    _SC_2_PBS_TRACK,
    _SC_SYMLOOP_MAX,
    _SC_STREAMS,
    _SC_2_PBS_CHECKPOINT,
    _SC_V6_ILP32_OFF32,
    _SC_V6_ILP32_OFFBIG,
    _SC_V6_LP64_OFF64,
    _SC_V6_LPBIG_OFFBIG,
    _SC_HOST_NAME_MAX,
    _SC_TRACE,
    _SC_TRACE_EVENT_FILTER,
    _SC_TRACE_INHERIT,
    _SC_TRACE_LOG,
    _SC_LEVEL1_ICACHE_SIZE,
    _SC_LEVEL1_ICACHE_ASSOC,
    _SC_LEVEL1_ICACHE_LINESIZE,
    _SC_LEVEL1_DCACHE_SIZE,
    _SC_LEVEL1_DCACHE_ASSOC,
    _SC_LEVEL1_DCACHE_LINESIZE,
    _SC_LEVEL2_CACHE_SIZE,
    _SC_LEVEL2_CACHE_ASSOC,
    _SC_LEVEL2_CACHE_LINESIZE,
    _SC_LEVEL3_CACHE_SIZE,
    _SC_LEVEL3_CACHE_ASSOC,
    _SC_LEVEL3_CACHE_LINESIZE,
    _SC_LEVEL4_CACHE_SIZE,
    _SC_LEVEL4_CACHE_ASSOC,
    _SC_LEVEL4_CACHE_LINESIZE,
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
    _SC_RAW_SOCKETS,
    _SC_V7_ILP32_OFF32,
    _SC_V7_ILP32_OFFBIG,
    _SC_V7_LP64_OFF64,
    _SC_V7_LPBIG_OFFBIG,
    _SC_SS_REPL_MAX,
    _SC_TRACE_EVENT_NAME_MAX,
    _SC_TRACE_NAME_MAX,
    _SC_TRACE_SYS_MAX,
    _SC_TRACE_USER_EVENT_MAX,
    _SC_XOPEN_STREAMS,
    _SC_THREAD_ROBUST_PRIO_INHERIT,
    _SC_THREAD_ROBUST_PRIO_PROTECT
  };
enum
  
{
    _CS_PATH,
    _CS_V6_WIDTH_RESTRICTED_ENVS,
    _CS_GNU_LIBC_VERSION,
    _CS_GNU_LIBPTHREAD_VERSION,
    _CS_V5_WIDTH_RESTRICTED_ENVS,
    _CS_V7_WIDTH_RESTRICTED_ENVS,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS,
    _CS_LFS_LIBS,
    _CS_LFS_LINTFLAGS,
    _CS_LFS64_CFLAGS,
    _CS_LFS64_LDFLAGS,
    _CS_LFS64_LIBS,
    _CS_LFS64_LINTFLAGS,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
    _CS_XBS5_ILP32_OFF32_LIBS,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LIBS,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
    _CS_XBS5_LP64_OFF64_CFLAGS,
    _CS_XBS5_LP64_OFF64_LDFLAGS,
    _CS_XBS5_LP64_OFF64_LIBS,
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LIBS,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LIBS,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
    _CS_V6_ENV,
    _CS_V7_ENV
  };
extern long int pathconf (const char *__path, int __name)
     throw () __attribute__ ((__nonnull__ (1)));
extern long int fpathconf (int __fd, int __name) throw ();
extern long int sysconf (int __name) throw ();
extern size_t confstr (int __name, char *__buf, size_t __len) throw ();
extern __pid_t getpid (void) throw ();
extern __pid_t getppid (void) throw ();
extern __pid_t getpgrp (void) throw ();
extern __pid_t __getpgid (__pid_t __pid) throw ();
extern __pid_t getpgid (__pid_t __pid) throw ();
extern int setpgid (__pid_t __pid, __pid_t __pgid) throw ();
extern int setpgrp (void) throw ();
extern __pid_t setsid (void) throw ();
extern __pid_t getsid (__pid_t __pid) throw ();
extern __uid_t getuid (void) throw ();
extern __uid_t geteuid (void) throw ();
extern __gid_t getgid (void) throw ();
extern __gid_t getegid (void) throw ();
extern int getgroups (int __size, __gid_t __list[]) throw () ;
extern int group_member (__gid_t __gid) throw ();
extern int setuid (__uid_t __uid) throw () ;
extern int setreuid (__uid_t __ruid, __uid_t __euid) throw () ;
extern int seteuid (__uid_t __uid) throw () ;
extern int setgid (__gid_t __gid) throw () ;
extern int setregid (__gid_t __rgid, __gid_t __egid) throw () ;
extern int setegid (__gid_t __gid) throw () ;
extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     throw ();
extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     throw ();
extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     throw () ;
extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     throw () ;
extern __pid_t fork (void) throw ();
extern __pid_t vfork (void) throw ();
extern char *ttyname (int __fd) throw ();
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2))) ;
extern int isatty (int __fd) throw ();
extern int ttyslot (void) throw ();
extern int link (const char *__from, const char *__to)
     throw () __attribute__ ((__nonnull__ (1, 2))) ;
extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     throw () __attribute__ ((__nonnull__ (2, 4))) ;
extern int symlink (const char *__from, const char *__to)
     throw () __attribute__ ((__nonnull__ (1, 2))) ;
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (1, 2))) ;
extern int symlinkat (const char *__from, int __tofd,
        const char *__to) throw () __attribute__ ((__nonnull__ (1, 3))) ;
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (2, 3))) ;
extern int unlink (const char *__name) throw () __attribute__ ((__nonnull__ (1)));
extern int unlinkat (int __fd, const char *__name, int __flag)
     throw () __attribute__ ((__nonnull__ (2)));
extern int rmdir (const char *__path) throw () __attribute__ ((__nonnull__ (1)));
extern __pid_t tcgetpgrp (int __fd) throw ();
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) throw ();
extern char *getlogin (void);
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));
extern int setlogin (const char *__name) throw () __attribute__ ((__nonnull__ (1)));
extern "C" 
{
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       throw () __attribute__ ((__nonnull__ (2, 3)));
}
extern "C" 
{
}
extern int gethostname (char *__name, size_t __len) throw () __attribute__ ((__nonnull__ (1)));
extern int sethostname (const char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int sethostid (long int __id) throw () ;
extern int getdomainname (char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (const char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int vhangup (void) throw ();
extern int revoke (const char *__file) throw () __attribute__ ((__nonnull__ (1))) ;
extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     throw () __attribute__ ((__nonnull__ (1)));
extern int acct (const char *__name) throw ();
extern char *getusershell (void) throw ();
extern void endusershell (void) throw ();
extern void setusershell (void) throw ();
extern int daemon (int __nochdir, int __noclose) throw () ;
extern int chroot (const char *__path) throw () __attribute__ ((__nonnull__ (1))) ;
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));
extern int fsync (int __fd);
extern int syncfs (int __fd) throw ();
extern long int gethostid (void);
extern void sync (void) throw ();
extern int getpagesize (void) throw () __attribute__ ((__const__));
extern int getdtablesize (void) throw ();
extern int truncate (const char *__file, __off_t __length)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int truncate64 (const char *__file, __off64_t __length)
     throw () __attribute__ ((__nonnull__ (1))) ;
extern int ftruncate (int __fd, __off_t __length) throw () ;
extern int ftruncate64 (int __fd, __off64_t __length) throw () ;
extern int brk (void *__addr) throw () ;
extern void *sbrk (intptr_t __delta) throw ();
extern long int syscall (long int __sysno, ...) throw ();
ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
    int __outfd, __off64_t *__poutoff,
    size_t __length, unsigned int __flags);
extern int fdatasync (int __fildes);
extern char *crypt (const char *__key, const char *__salt)
     throw () __attribute__ ((__nonnull__ (1, 2)));
extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) throw () __attribute__ ((__nonnull__ (1, 2)));
int getentropy (void *__buffer, size_t __length) ;
extern __pid_t gettid (void) throw ();
}
extern "C++" 
{
namespace std __attribute__ ((__visibility__ ("default")))
{
  struct __true_type { };
{
  struct __false_type { };
{
  template<bool>
    struct __truth_type
    { typedef __false_type __type; };
{
  template<>
    struct __truth_type<true>
    { typedef __true_type __type; };
{
  template<class _Sp, class _Tp>
    struct __traitor
    
{
      enum { __value = bool(_Sp::__value) || bool(_Tp::__value) };
{
      typedef typename __truth_type<__value>::__type __type;
    };
  template<typename, typename>
    struct __are_same
    
{
      enum { __value = 0 };
{
      typedef __false_type __type;
    };
  template<typename _Tp>
    struct __are_same<_Tp, _Tp>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<typename _Tp>
    struct __is_void
    
{
      enum { __value = 0 };
{
      typedef __false_type __type;
    };
  template<>
    struct __is_void<void>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<typename _Tp>
    struct __is_integer
    
{
      enum { __value = 0 };
{
      typedef __false_type __type;
    };
  template<>
    struct __is_integer<bool>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<char>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<signed char>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<unsigned char>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<wchar_t>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<char16_t>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<char32_t>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<short>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<unsigned short>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<int>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<unsigned int>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<long>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<unsigned long>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<long long>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_integer<unsigned long long>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
template<> struct __is_integer<__int128> { enum { __value = 1 }; typedef __true_type __type; }; template<> struct __is_integer<unsigned __int128> { enum { __value = 1 }; typedef __true_type __type; };
{
  template<typename _Tp>
    struct __is_floating
    
{
      enum { __value = 0 };
{
      typedef __false_type __type;
    };
  template<>
    struct __is_floating<float>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_floating<double>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_floating<long double>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<typename _Tp>
    struct __is_pointer
    
{
      enum { __value = 0 };
{
      typedef __false_type __type;
    };
  template<typename _Tp>
    struct __is_pointer<_Tp*>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<typename _Tp>
    struct __is_arithmetic
    : public __traitor<__is_integer<_Tp>, __is_floating<_Tp> >
    { };
{
  template<typename _Tp>
    struct __is_scalar
    : public __traitor<__is_arithmetic<_Tp>, __is_pointer<_Tp> >
    { };
{
  template<typename _Tp>
    struct __is_char
    
{
      enum { __value = 0 };
{
      typedef __false_type __type;
    };
  template<>
    struct __is_char<char>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_char<wchar_t>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<typename _Tp>
    struct __is_byte
    
{
      enum { __value = 0 };
{
      typedef __false_type __type;
    };
  template<>
    struct __is_byte<char>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_byte<signed char>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<>
    struct __is_byte<unsigned char>
    
{
      enum { __value = 1 };
{
      typedef __true_type __type;
    };
  template<typename _Tp>
    struct __is_move_iterator
    
{
      enum { __value = 0 };
{
      typedef __false_type __type;
    };
  template<typename _Iterator>
    inline _Iterator
    __miter_base(_Iterator __it)
    { return __it; }
{
}
}
extern "C++" 
{
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
  template<bool, typename>
    struct __enable_if
    { };
{
  template<typename _Tp>
    struct __enable_if<true, _Tp>
    { typedef _Tp __type; };
{
  template<bool _Cond, typename _Iftrue, typename _Iffalse>
    struct __conditional_type
    { typedef _Iftrue __type; };
{
  template<typename _Iftrue, typename _Iffalse>
    struct __conditional_type<false, _Iftrue, _Iffalse>
    { typedef _Iffalse __type; };
{
  template<typename _Tp>
    struct __add_unsigned
    
{
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
    public:
      typedef typename __if_type::__type __type;
    };
  template<>
    struct __add_unsigned<char>
    { typedef unsigned char __type; };
{
  template<>
    struct __add_unsigned<signed char>
    { typedef unsigned char __type; };
{
  template<>
    struct __add_unsigned<short>
    { typedef unsigned short __type; };
{
  template<>
    struct __add_unsigned<int>
    { typedef unsigned int __type; };
{
  template<>
    struct __add_unsigned<long>
    { typedef unsigned long __type; };
{
  template<>
    struct __add_unsigned<long long>
    { typedef unsigned long long __type; };
{
  template<>
    struct __add_unsigned<bool>;
  template<>
    struct __add_unsigned<wchar_t>;
  template<typename _Tp>
    struct __remove_unsigned
    
{
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
    public:
      typedef typename __if_type::__type __type;
    };
  template<>
    struct __remove_unsigned<char>
    { typedef signed char __type; };
{
  template<>
    struct __remove_unsigned<unsigned char>
    { typedef signed char __type; };
{
  template<>
    struct __remove_unsigned<unsigned short>
    { typedef short __type; };
{
  template<>
    struct __remove_unsigned<unsigned int>
    { typedef int __type; };
{
  template<>
    struct __remove_unsigned<unsigned long>
    { typedef long __type; };
{
  template<>
    struct __remove_unsigned<unsigned long long>
    { typedef long long __type; };
{
  template<>
    struct __remove_unsigned<bool>;
  template<>
    struct __remove_unsigned<wchar_t>;
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
    { return __ptr == 0; }
{
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type)
    { return false; }
{
  inline bool
  __is_null_pointer(std::nullptr_t)
  { return true; }
{
  template<typename _Tp, bool = std::__is_integer<_Tp>::__value>
    struct __promote
    { typedef double __type; };
{
  template<typename _Tp>
    struct __promote<_Tp, false>
    { };
{
  template<>
    struct __promote<long double>
    { typedef long double __type; };
{
  template<>
    struct __promote<double>
    { typedef double __type; };
{
  template<>
    struct __promote<float>
    { typedef float __type; };
{
  template<typename _Tp, typename _Up,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type>
    struct __promote_2
    
{
      typedef __typeof__(_Tp2() + _Up2()) __type;
    };
  template<typename _Tp, typename _Up, typename _Vp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type>
    struct __promote_3
    
{
      typedef __typeof__(_Tp2() + _Up2() + _Vp2()) __type;
    };
  template<typename _Tp, typename _Up, typename _Vp, typename _Wp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type,
           typename _Wp2 = typename __promote<_Wp>::__type>
    struct __promote_4
    
{
      typedef __typeof__(_Tp2() + _Up2() + _Vp2() + _Wp2()) __type;
    };
}
}
extern "C" 
{
typedef float float_t;
typedef double double_t;
enum
  
{
    FP_INT_UPWARD =
      0,
    FP_INT_DOWNWARD =
      1,
    FP_INT_TOWARDZERO =
      2,
    FP_INT_TONEARESTFROMZERO =
      3,
    FP_INT_TONEAREST =
      4,
  };
extern int __fpclassify (double __value) throw ()
     __attribute__ ((__const__));
extern int __signbit (double __value) throw ()
     __attribute__ ((__const__));
extern int __isinf (double __value) throw () __attribute__ ((__const__));
extern int __finite (double __value) throw () __attribute__ ((__const__));
extern int __isnan (double __value) throw () __attribute__ ((__const__));
extern int __iseqsig (double __x, double __y) throw ();
extern int __issignaling (double __value) throw ()
     __attribute__ ((__const__));
extern double acos (double __x) throw (); extern double __acos (double __x) throw ();
extern double asin (double __x) throw (); extern double __asin (double __x) throw ();
extern double atan (double __x) throw (); extern double __atan (double __x) throw ();
extern double atan2 (double __y, double __x) throw (); extern double __atan2 (double __y, double __x) throw ();
 extern double cos (double __x) throw (); extern double __cos (double __x) throw ();
 extern double sin (double __x) throw (); extern double __sin (double __x) throw ();
extern double tan (double __x) throw (); extern double __tan (double __x) throw ();
extern double cosh (double __x) throw (); extern double __cosh (double __x) throw ();
extern double sinh (double __x) throw (); extern double __sinh (double __x) throw ();
extern double tanh (double __x) throw (); extern double __tanh (double __x) throw ();
 extern void sincos (double __x, double *__sinx, double *__cosx) throw (); extern void __sincos (double __x, double *__sinx, double *__cosx) throw ();
extern double acosh (double __x) throw (); extern double __acosh (double __x) throw ();
extern double asinh (double __x) throw (); extern double __asinh (double __x) throw ();
extern double atanh (double __x) throw (); extern double __atanh (double __x) throw ();
 extern double exp (double __x) throw (); extern double __exp (double __x) throw ();
extern double frexp (double __x, int *__exponent) throw (); extern double __frexp (double __x, int *__exponent) throw ();
extern double ldexp (double __x, int __exponent) throw (); extern double __ldexp (double __x, int __exponent) throw ();
 extern double log (double __x) throw (); extern double __log (double __x) throw ();
extern double log10 (double __x) throw (); extern double __log10 (double __x) throw ();
extern double modf (double __x, double *__iptr) throw (); extern double __modf (double __x, double *__iptr) throw () __attribute__ ((__nonnull__ (2)));
extern double exp10 (double __x) throw (); extern double __exp10 (double __x) throw ();
extern double expm1 (double __x) throw (); extern double __expm1 (double __x) throw ();
extern double log1p (double __x) throw (); extern double __log1p (double __x) throw ();
extern double logb (double __x) throw (); extern double __logb (double __x) throw ();
extern double exp2 (double __x) throw (); extern double __exp2 (double __x) throw ();
extern double log2 (double __x) throw (); extern double __log2 (double __x) throw ();
 extern double pow (double __x, double __y) throw (); extern double __pow (double __x, double __y) throw ();
extern double sqrt (double __x) throw (); extern double __sqrt (double __x) throw ();
extern double hypot (double __x, double __y) throw (); extern double __hypot (double __x, double __y) throw ();
extern double cbrt (double __x) throw (); extern double __cbrt (double __x) throw ();
extern double ceil (double __x) throw () __attribute__ ((__const__)); extern double __ceil (double __x) throw () __attribute__ ((__const__));
extern double fabs (double __x) throw () __attribute__ ((__const__)); extern double __fabs (double __x) throw () __attribute__ ((__const__));
extern double floor (double __x) throw () __attribute__ ((__const__)); extern double __floor (double __x) throw () __attribute__ ((__const__));
extern double fmod (double __x, double __y) throw (); extern double __fmod (double __x, double __y) throw ();
extern int finite (double __value) throw () __attribute__ ((__const__));
extern double drem (double __x, double __y) throw (); extern double __drem (double __x, double __y) throw ();
extern double significand (double __x) throw (); extern double __significand (double __x) throw ();
extern double copysign (double __x, double __y) throw () __attribute__ ((__const__)); extern double __copysign (double __x, double __y) throw () __attribute__ ((__const__));
extern double nan (const char *__tagb) throw (); extern double __nan (const char *__tagb) throw ();
extern double j0 (double) throw (); extern double __j0 (double) throw ();
extern double j1 (double) throw (); extern double __j1 (double) throw ();
extern double jn (int, double) throw (); extern double __jn (int, double) throw ();
extern double y0 (double) throw (); extern double __y0 (double) throw ();
extern double y1 (double) throw (); extern double __y1 (double) throw ();
extern double yn (int, double) throw (); extern double __yn (int, double) throw ();
extern double erf (double) throw (); extern double __erf (double) throw ();
extern double erfc (double) throw (); extern double __erfc (double) throw ();
extern double lgamma (double) throw (); extern double __lgamma (double) throw ();
extern double tgamma (double) throw (); extern double __tgamma (double) throw ();
extern double gamma (double) throw (); extern double __gamma (double) throw ();
extern double lgamma_r (double, int *__signgamp) throw (); extern double __lgamma_r (double, int *__signgamp) throw ();
extern double rint (double __x) throw (); extern double __rint (double __x) throw ();
extern double nextafter (double __x, double __y) throw (); extern double __nextafter (double __x, double __y) throw ();
extern double nexttoward (double __x, long double __y) throw (); extern double __nexttoward (double __x, long double __y) throw ();
extern double nextdown (double __x) throw (); extern double __nextdown (double __x) throw ();
extern double nextup (double __x) throw (); extern double __nextup (double __x) throw ();
extern double remainder (double __x, double __y) throw (); extern double __remainder (double __x, double __y) throw ();
extern double scalbn (double __x, int __n) throw (); extern double __scalbn (double __x, int __n) throw ();
extern int ilogb (double __x) throw (); extern int __ilogb (double __x) throw ();
extern long int llogb (double __x) throw (); extern long int __llogb (double __x) throw ();
extern double scalbln (double __x, long int __n) throw (); extern double __scalbln (double __x, long int __n) throw ();
extern double nearbyint (double __x) throw (); extern double __nearbyint (double __x) throw ();
extern double round (double __x) throw () __attribute__ ((__const__)); extern double __round (double __x) throw () __attribute__ ((__const__));
extern double trunc (double __x) throw () __attribute__ ((__const__)); extern double __trunc (double __x) throw () __attribute__ ((__const__));
extern double remquo (double __x, double __y, int *__quo) throw (); extern double __remquo (double __x, double __y, int *__quo) throw ();
extern long int lrint (double __x) throw (); extern long int __lrint (double __x) throw ();
__extension__
extern long long int llrint (double __x) throw (); extern long long int __llrint (double __x) throw ();
extern long int lround (double __x) throw (); extern long int __lround (double __x) throw ();
__extension__
extern long long int llround (double __x) throw (); extern long long int __llround (double __x) throw ();
extern double fdim (double __x, double __y) throw (); extern double __fdim (double __x, double __y) throw ();
extern double fmax (double __x, double __y) throw () __attribute__ ((__const__)); extern double __fmax (double __x, double __y) throw () __attribute__ ((__const__));
extern double fmin (double __x, double __y) throw () __attribute__ ((__const__)); extern double __fmin (double __x, double __y) throw () __attribute__ ((__const__));
extern double fma (double __x, double __y, double __z) throw (); extern double __fma (double __x, double __y, double __z) throw ();
extern double roundeven (double __x) throw () __attribute__ ((__const__)); extern double __roundeven (double __x) throw () __attribute__ ((__const__));
extern __intmax_t fromfp (double __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfp (double __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfp (double __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfp (double __x, int __round, unsigned int __width) throw ();
extern __intmax_t fromfpx (double __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpx (double __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpx (double __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpx (double __x, int __round, unsigned int __width) throw ();
extern double fmaxmag (double __x, double __y) throw () __attribute__ ((__const__)); extern double __fmaxmag (double __x, double __y) throw () __attribute__ ((__const__));
extern double fminmag (double __x, double __y) throw () __attribute__ ((__const__)); extern double __fminmag (double __x, double __y) throw () __attribute__ ((__const__));
extern int canonicalize (double *__cx, const double *__x) throw ();
extern int totalorder (const double *__x, const double *__y) throw ()
     __attribute__ ((__pure__));
extern int totalordermag (const double *__x, const double *__y) throw ()
     __attribute__ ((__pure__));
extern double getpayload (const double *__x) throw (); extern double __getpayload (const double *__x) throw ();
extern int setpayload (double *__x, double __payload) throw ();
extern int setpayloadsig (double *__x, double __payload) throw ();
extern double scalb (double __x, double __n) throw (); extern double __scalb (double __x, double __n) throw ();
extern int __fpclassifyf (float __value) throw ()
     __attribute__ ((__const__));
extern int __signbitf (float __value) throw ()
     __attribute__ ((__const__));
extern int __isinff (float __value) throw () __attribute__ ((__const__));
extern int __finitef (float __value) throw () __attribute__ ((__const__));
extern int __isnanf (float __value) throw () __attribute__ ((__const__));
extern int __iseqsigf (float __x, float __y) throw ();
extern int __issignalingf (float __value) throw ()
     __attribute__ ((__const__));
extern float acosf (float __x) throw (); extern float __acosf (float __x) throw ();
extern float asinf (float __x) throw (); extern float __asinf (float __x) throw ();
extern float atanf (float __x) throw (); extern float __atanf (float __x) throw ();
extern float atan2f (float __y, float __x) throw (); extern float __atan2f (float __y, float __x) throw ();
 extern float cosf (float __x) throw (); extern float __cosf (float __x) throw ();
 extern float sinf (float __x) throw (); extern float __sinf (float __x) throw ();
extern float tanf (float __x) throw (); extern float __tanf (float __x) throw ();
extern float coshf (float __x) throw (); extern float __coshf (float __x) throw ();
extern float sinhf (float __x) throw (); extern float __sinhf (float __x) throw ();
extern float tanhf (float __x) throw (); extern float __tanhf (float __x) throw ();
 extern void sincosf (float __x, float *__sinx, float *__cosx) throw (); extern void __sincosf (float __x, float *__sinx, float *__cosx) throw ();
extern float acoshf (float __x) throw (); extern float __acoshf (float __x) throw ();
extern float asinhf (float __x) throw (); extern float __asinhf (float __x) throw ();
extern float atanhf (float __x) throw (); extern float __atanhf (float __x) throw ();
 extern float expf (float __x) throw (); extern float __expf (float __x) throw ();
extern float frexpf (float __x, int *__exponent) throw (); extern float __frexpf (float __x, int *__exponent) throw ();
extern float ldexpf (float __x, int __exponent) throw (); extern float __ldexpf (float __x, int __exponent) throw ();
 extern float logf (float __x) throw (); extern float __logf (float __x) throw ();
extern float log10f (float __x) throw (); extern float __log10f (float __x) throw ();
extern float modff (float __x, float *__iptr) throw (); extern float __modff (float __x, float *__iptr) throw () __attribute__ ((__nonnull__ (2)));
extern float exp10f (float __x) throw (); extern float __exp10f (float __x) throw ();
extern float expm1f (float __x) throw (); extern float __expm1f (float __x) throw ();
extern float log1pf (float __x) throw (); extern float __log1pf (float __x) throw ();
extern float logbf (float __x) throw (); extern float __logbf (float __x) throw ();
extern float exp2f (float __x) throw (); extern float __exp2f (float __x) throw ();
extern float log2f (float __x) throw (); extern float __log2f (float __x) throw ();
 extern float powf (float __x, float __y) throw (); extern float __powf (float __x, float __y) throw ();
extern float sqrtf (float __x) throw (); extern float __sqrtf (float __x) throw ();
extern float hypotf (float __x, float __y) throw (); extern float __hypotf (float __x, float __y) throw ();
extern float cbrtf (float __x) throw (); extern float __cbrtf (float __x) throw ();
extern float ceilf (float __x) throw () __attribute__ ((__const__)); extern float __ceilf (float __x) throw () __attribute__ ((__const__));
extern float fabsf (float __x) throw () __attribute__ ((__const__)); extern float __fabsf (float __x) throw () __attribute__ ((__const__));
extern float floorf (float __x) throw () __attribute__ ((__const__)); extern float __floorf (float __x) throw () __attribute__ ((__const__));
extern float fmodf (float __x, float __y) throw (); extern float __fmodf (float __x, float __y) throw ();
extern int isinff (float __value) throw () __attribute__ ((__const__));
extern int finitef (float __value) throw () __attribute__ ((__const__));
extern float dremf (float __x, float __y) throw (); extern float __dremf (float __x, float __y) throw ();
extern float significandf (float __x) throw (); extern float __significandf (float __x) throw ();
extern float copysignf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) throw () __attribute__ ((__const__));
extern float nanf (const char *__tagb) throw (); extern float __nanf (const char *__tagb) throw ();
extern int isnanf (float __value) throw () __attribute__ ((__const__));
extern float j0f (float) throw (); extern float __j0f (float) throw ();
extern float j1f (float) throw (); extern float __j1f (float) throw ();
extern float jnf (int, float) throw (); extern float __jnf (int, float) throw ();
extern float y0f (float) throw (); extern float __y0f (float) throw ();
extern float y1f (float) throw (); extern float __y1f (float) throw ();
extern float ynf (int, float) throw (); extern float __ynf (int, float) throw ();
extern float erff (float) throw (); extern float __erff (float) throw ();
extern float erfcf (float) throw (); extern float __erfcf (float) throw ();
extern float lgammaf (float) throw (); extern float __lgammaf (float) throw ();
extern float tgammaf (float) throw (); extern float __tgammaf (float) throw ();
extern float gammaf (float) throw (); extern float __gammaf (float) throw ();
extern float lgammaf_r (float, int *__signgamp) throw (); extern float __lgammaf_r (float, int *__signgamp) throw ();
extern float rintf (float __x) throw (); extern float __rintf (float __x) throw ();
extern float nextafterf (float __x, float __y) throw (); extern float __nextafterf (float __x, float __y) throw ();
extern float nexttowardf (float __x, long double __y) throw (); extern float __nexttowardf (float __x, long double __y) throw ();
extern float nextdownf (float __x) throw (); extern float __nextdownf (float __x) throw ();
extern float nextupf (float __x) throw (); extern float __nextupf (float __x) throw ();
extern float remainderf (float __x, float __y) throw (); extern float __remainderf (float __x, float __y) throw ();
extern float scalbnf (float __x, int __n) throw (); extern float __scalbnf (float __x, int __n) throw ();
extern int ilogbf (float __x) throw (); extern int __ilogbf (float __x) throw ();
extern long int llogbf (float __x) throw (); extern long int __llogbf (float __x) throw ();
extern float scalblnf (float __x, long int __n) throw (); extern float __scalblnf (float __x, long int __n) throw ();
extern float nearbyintf (float __x) throw (); extern float __nearbyintf (float __x) throw ();
extern float roundf (float __x) throw () __attribute__ ((__const__)); extern float __roundf (float __x) throw () __attribute__ ((__const__));
extern float truncf (float __x) throw () __attribute__ ((__const__)); extern float __truncf (float __x) throw () __attribute__ ((__const__));
extern float remquof (float __x, float __y, int *__quo) throw (); extern float __remquof (float __x, float __y, int *__quo) throw ();
extern long int lrintf (float __x) throw (); extern long int __lrintf (float __x) throw ();
__extension__
extern long long int llrintf (float __x) throw (); extern long long int __llrintf (float __x) throw ();
extern long int lroundf (float __x) throw (); extern long int __lroundf (float __x) throw ();
__extension__
extern long long int llroundf (float __x) throw (); extern long long int __llroundf (float __x) throw ();
extern float fdimf (float __x, float __y) throw (); extern float __fdimf (float __x, float __y) throw ();
extern float fmaxf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) throw () __attribute__ ((__const__));
extern float fminf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __fminf (float __x, float __y) throw () __attribute__ ((__const__));
extern float fmaf (float __x, float __y, float __z) throw (); extern float __fmaf (float __x, float __y, float __z) throw ();
extern float roundevenf (float __x) throw () __attribute__ ((__const__)); extern float __roundevenf (float __x) throw () __attribute__ ((__const__));
extern __intmax_t fromfpf (float __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpf (float __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpf (float __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpf (float __x, int __round, unsigned int __width) throw ();
extern __intmax_t fromfpxf (float __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpxf (float __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpxf (float __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpxf (float __x, int __round, unsigned int __width) throw ();
extern float fmaxmagf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __fmaxmagf (float __x, float __y) throw () __attribute__ ((__const__));
extern float fminmagf (float __x, float __y) throw () __attribute__ ((__const__)); extern float __fminmagf (float __x, float __y) throw () __attribute__ ((__const__));
extern int canonicalizef (float *__cx, const float *__x) throw ();
extern int totalorderf (const float *__x, const float *__y) throw ()
     __attribute__ ((__pure__));
extern int totalordermagf (const float *__x, const float *__y) throw ()
     __attribute__ ((__pure__));
extern float getpayloadf (const float *__x) throw (); extern float __getpayloadf (const float *__x) throw ();
extern int setpayloadf (float *__x, float __payload) throw ();
extern int setpayloadsigf (float *__x, float __payload) throw ();
extern float scalbf (float __x, float __n) throw (); extern float __scalbf (float __x, float __n) throw ();
extern int __fpclassifyl (long double __value) throw ()
     __attribute__ ((__const__));
extern int __signbitl (long double __value) throw ()
     __attribute__ ((__const__));
extern int __isinfl (long double __value) throw () __attribute__ ((__const__));
extern int __finitel (long double __value) throw () __attribute__ ((__const__));
extern int __isnanl (long double __value) throw () __attribute__ ((__const__));
extern int __iseqsigl (long double __x, long double __y) throw ();
extern int __issignalingl (long double __value) throw ()
     __attribute__ ((__const__));
extern long double acosl (long double __x) throw (); extern long double __acosl (long double __x) throw ();
extern long double asinl (long double __x) throw (); extern long double __asinl (long double __x) throw ();
extern long double atanl (long double __x) throw (); extern long double __atanl (long double __x) throw ();
extern long double atan2l (long double __y, long double __x) throw (); extern long double __atan2l (long double __y, long double __x) throw ();
 extern long double cosl (long double __x) throw (); extern long double __cosl (long double __x) throw ();
 extern long double sinl (long double __x) throw (); extern long double __sinl (long double __x) throw ();
extern long double tanl (long double __x) throw (); extern long double __tanl (long double __x) throw ();
extern long double coshl (long double __x) throw (); extern long double __coshl (long double __x) throw ();
extern long double sinhl (long double __x) throw (); extern long double __sinhl (long double __x) throw ();
extern long double tanhl (long double __x) throw (); extern long double __tanhl (long double __x) throw ();
 extern void sincosl (long double __x, long double *__sinx, long double *__cosx) throw (); extern void __sincosl (long double __x, long double *__sinx, long double *__cosx) throw ();
extern long double acoshl (long double __x) throw (); extern long double __acoshl (long double __x) throw ();
extern long double asinhl (long double __x) throw (); extern long double __asinhl (long double __x) throw ();
extern long double atanhl (long double __x) throw (); extern long double __atanhl (long double __x) throw ();
 extern long double expl (long double __x) throw (); extern long double __expl (long double __x) throw ();
extern long double frexpl (long double __x, int *__exponent) throw (); extern long double __frexpl (long double __x, int *__exponent) throw ();
extern long double ldexpl (long double __x, int __exponent) throw (); extern long double __ldexpl (long double __x, int __exponent) throw ();
 extern long double logl (long double __x) throw (); extern long double __logl (long double __x) throw ();
extern long double log10l (long double __x) throw (); extern long double __log10l (long double __x) throw ();
extern long double modfl (long double __x, long double *__iptr) throw (); extern long double __modfl (long double __x, long double *__iptr) throw () __attribute__ ((__nonnull__ (2)));
extern long double exp10l (long double __x) throw (); extern long double __exp10l (long double __x) throw ();
extern long double expm1l (long double __x) throw (); extern long double __expm1l (long double __x) throw ();
extern long double log1pl (long double __x) throw (); extern long double __log1pl (long double __x) throw ();
extern long double logbl (long double __x) throw (); extern long double __logbl (long double __x) throw ();
extern long double exp2l (long double __x) throw (); extern long double __exp2l (long double __x) throw ();
extern long double log2l (long double __x) throw (); extern long double __log2l (long double __x) throw ();
 extern long double powl (long double __x, long double __y) throw (); extern long double __powl (long double __x, long double __y) throw ();
extern long double sqrtl (long double __x) throw (); extern long double __sqrtl (long double __x) throw ();
extern long double hypotl (long double __x, long double __y) throw (); extern long double __hypotl (long double __x, long double __y) throw ();
extern long double cbrtl (long double __x) throw (); extern long double __cbrtl (long double __x) throw ();
extern long double ceill (long double __x) throw () __attribute__ ((__const__)); extern long double __ceill (long double __x) throw () __attribute__ ((__const__));
extern long double fabsl (long double __x) throw () __attribute__ ((__const__)); extern long double __fabsl (long double __x) throw () __attribute__ ((__const__));
extern long double floorl (long double __x) throw () __attribute__ ((__const__)); extern long double __floorl (long double __x) throw () __attribute__ ((__const__));
extern long double fmodl (long double __x, long double __y) throw (); extern long double __fmodl (long double __x, long double __y) throw ();
extern int isinfl (long double __value) throw () __attribute__ ((__const__));
extern int finitel (long double __value) throw () __attribute__ ((__const__));
extern long double dreml (long double __x, long double __y) throw (); extern long double __dreml (long double __x, long double __y) throw ();
extern long double significandl (long double __x) throw (); extern long double __significandl (long double __x) throw ();
extern long double copysignl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) throw () __attribute__ ((__const__));
extern long double nanl (const char *__tagb) throw (); extern long double __nanl (const char *__tagb) throw ();
extern int isnanl (long double __value) throw () __attribute__ ((__const__));
extern long double j0l (long double) throw (); extern long double __j0l (long double) throw ();
extern long double j1l (long double) throw (); extern long double __j1l (long double) throw ();
extern long double jnl (int, long double) throw (); extern long double __jnl (int, long double) throw ();
extern long double y0l (long double) throw (); extern long double __y0l (long double) throw ();
extern long double y1l (long double) throw (); extern long double __y1l (long double) throw ();
extern long double ynl (int, long double) throw (); extern long double __ynl (int, long double) throw ();
extern long double erfl (long double) throw (); extern long double __erfl (long double) throw ();
extern long double erfcl (long double) throw (); extern long double __erfcl (long double) throw ();
extern long double lgammal (long double) throw (); extern long double __lgammal (long double) throw ();
extern long double tgammal (long double) throw (); extern long double __tgammal (long double) throw ();
extern long double gammal (long double) throw (); extern long double __gammal (long double) throw ();
extern long double lgammal_r (long double, int *__signgamp) throw (); extern long double __lgammal_r (long double, int *__signgamp) throw ();
extern long double rintl (long double __x) throw (); extern long double __rintl (long double __x) throw ();
extern long double nextafterl (long double __x, long double __y) throw (); extern long double __nextafterl (long double __x, long double __y) throw ();
extern long double nexttowardl (long double __x, long double __y) throw (); extern long double __nexttowardl (long double __x, long double __y) throw ();
extern long double nextdownl (long double __x) throw (); extern long double __nextdownl (long double __x) throw ();
extern long double nextupl (long double __x) throw (); extern long double __nextupl (long double __x) throw ();
extern long double remainderl (long double __x, long double __y) throw (); extern long double __remainderl (long double __x, long double __y) throw ();
extern long double scalbnl (long double __x, int __n) throw (); extern long double __scalbnl (long double __x, int __n) throw ();
extern int ilogbl (long double __x) throw (); extern int __ilogbl (long double __x) throw ();
extern long int llogbl (long double __x) throw (); extern long int __llogbl (long double __x) throw ();
extern long double scalblnl (long double __x, long int __n) throw (); extern long double __scalblnl (long double __x, long int __n) throw ();
extern long double nearbyintl (long double __x) throw (); extern long double __nearbyintl (long double __x) throw ();
extern long double roundl (long double __x) throw () __attribute__ ((__const__)); extern long double __roundl (long double __x) throw () __attribute__ ((__const__));
extern long double truncl (long double __x) throw () __attribute__ ((__const__)); extern long double __truncl (long double __x) throw () __attribute__ ((__const__));
extern long double remquol (long double __x, long double __y, int *__quo) throw (); extern long double __remquol (long double __x, long double __y, int *__quo) throw ();
extern long int lrintl (long double __x) throw (); extern long int __lrintl (long double __x) throw ();
__extension__
extern long long int llrintl (long double __x) throw (); extern long long int __llrintl (long double __x) throw ();
extern long int lroundl (long double __x) throw (); extern long int __lroundl (long double __x) throw ();
__extension__
extern long long int llroundl (long double __x) throw (); extern long long int __llroundl (long double __x) throw ();
extern long double fdiml (long double __x, long double __y) throw (); extern long double __fdiml (long double __x, long double __y) throw ();
extern long double fmaxl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) throw () __attribute__ ((__const__));
extern long double fminl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) throw () __attribute__ ((__const__));
extern long double fmal (long double __x, long double __y, long double __z) throw (); extern long double __fmal (long double __x, long double __y, long double __z) throw ();
extern long double roundevenl (long double __x) throw () __attribute__ ((__const__)); extern long double __roundevenl (long double __x) throw () __attribute__ ((__const__));
extern __intmax_t fromfpl (long double __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpl (long double __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpl (long double __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpl (long double __x, int __round, unsigned int __width) throw ();
extern __intmax_t fromfpxl (long double __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpxl (long double __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpxl (long double __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpxl (long double __x, int __round, unsigned int __width) throw ();
extern long double fmaxmagl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __fmaxmagl (long double __x, long double __y) throw () __attribute__ ((__const__));
extern long double fminmagl (long double __x, long double __y) throw () __attribute__ ((__const__)); extern long double __fminmagl (long double __x, long double __y) throw () __attribute__ ((__const__));
extern int canonicalizel (long double *__cx, const long double *__x) throw ();
extern int totalorderl (const long double *__x, const long double *__y) throw ()
     __attribute__ ((__pure__));
extern int totalordermagl (const long double *__x, const long double *__y) throw ()
     __attribute__ ((__pure__));
extern long double getpayloadl (const long double *__x) throw (); extern long double __getpayloadl (const long double *__x) throw ();
extern int setpayloadl (long double *__x, long double __payload) throw ();
extern int setpayloadsigl (long double *__x, long double __payload) throw ();
extern long double scalbl (long double __x, long double __n) throw (); extern long double __scalbl (long double __x, long double __n) throw ();
extern _Float32 acosf32 (_Float32 __x) throw (); extern _Float32 __acosf32 (_Float32 __x) throw ();
extern _Float32 asinf32 (_Float32 __x) throw (); extern _Float32 __asinf32 (_Float32 __x) throw ();
extern _Float32 atanf32 (_Float32 __x) throw (); extern _Float32 __atanf32 (_Float32 __x) throw ();
extern _Float32 atan2f32 (_Float32 __y, _Float32 __x) throw (); extern _Float32 __atan2f32 (_Float32 __y, _Float32 __x) throw ();
 extern _Float32 cosf32 (_Float32 __x) throw (); extern _Float32 __cosf32 (_Float32 __x) throw ();
 extern _Float32 sinf32 (_Float32 __x) throw (); extern _Float32 __sinf32 (_Float32 __x) throw ();
extern _Float32 tanf32 (_Float32 __x) throw (); extern _Float32 __tanf32 (_Float32 __x) throw ();
extern _Float32 coshf32 (_Float32 __x) throw (); extern _Float32 __coshf32 (_Float32 __x) throw ();
extern _Float32 sinhf32 (_Float32 __x) throw (); extern _Float32 __sinhf32 (_Float32 __x) throw ();
extern _Float32 tanhf32 (_Float32 __x) throw (); extern _Float32 __tanhf32 (_Float32 __x) throw ();
 extern void sincosf32 (_Float32 __x, _Float32 *__sinx, _Float32 *__cosx) throw (); extern void __sincosf32 (_Float32 __x, _Float32 *__sinx, _Float32 *__cosx) throw ();
extern _Float32 acoshf32 (_Float32 __x) throw (); extern _Float32 __acoshf32 (_Float32 __x) throw ();
extern _Float32 asinhf32 (_Float32 __x) throw (); extern _Float32 __asinhf32 (_Float32 __x) throw ();
extern _Float32 atanhf32 (_Float32 __x) throw (); extern _Float32 __atanhf32 (_Float32 __x) throw ();
 extern _Float32 expf32 (_Float32 __x) throw (); extern _Float32 __expf32 (_Float32 __x) throw ();
extern _Float32 frexpf32 (_Float32 __x, int *__exponent) throw (); extern _Float32 __frexpf32 (_Float32 __x, int *__exponent) throw ();
extern _Float32 ldexpf32 (_Float32 __x, int __exponent) throw (); extern _Float32 __ldexpf32 (_Float32 __x, int __exponent) throw ();
 extern _Float32 logf32 (_Float32 __x) throw (); extern _Float32 __logf32 (_Float32 __x) throw ();
extern _Float32 log10f32 (_Float32 __x) throw (); extern _Float32 __log10f32 (_Float32 __x) throw ();
extern _Float32 modff32 (_Float32 __x, _Float32 *__iptr) throw (); extern _Float32 __modff32 (_Float32 __x, _Float32 *__iptr) throw () __attribute__ ((__nonnull__ (2)));
extern _Float32 exp10f32 (_Float32 __x) throw (); extern _Float32 __exp10f32 (_Float32 __x) throw ();
extern _Float32 expm1f32 (_Float32 __x) throw (); extern _Float32 __expm1f32 (_Float32 __x) throw ();
extern _Float32 log1pf32 (_Float32 __x) throw (); extern _Float32 __log1pf32 (_Float32 __x) throw ();
extern _Float32 logbf32 (_Float32 __x) throw (); extern _Float32 __logbf32 (_Float32 __x) throw ();
extern _Float32 exp2f32 (_Float32 __x) throw (); extern _Float32 __exp2f32 (_Float32 __x) throw ();
extern _Float32 log2f32 (_Float32 __x) throw (); extern _Float32 __log2f32 (_Float32 __x) throw ();
 extern _Float32 powf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __powf32 (_Float32 __x, _Float32 __y) throw ();
extern _Float32 sqrtf32 (_Float32 __x) throw (); extern _Float32 __sqrtf32 (_Float32 __x) throw ();
extern _Float32 hypotf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __hypotf32 (_Float32 __x, _Float32 __y) throw ();
extern _Float32 cbrtf32 (_Float32 __x) throw (); extern _Float32 __cbrtf32 (_Float32 __x) throw ();
extern _Float32 ceilf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __ceilf32 (_Float32 __x) throw () __attribute__ ((__const__));
extern _Float32 fabsf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __fabsf32 (_Float32 __x) throw () __attribute__ ((__const__));
extern _Float32 floorf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __floorf32 (_Float32 __x) throw () __attribute__ ((__const__));
extern _Float32 fmodf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __fmodf32 (_Float32 __x, _Float32 __y) throw ();
extern _Float32 copysignf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __copysignf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
extern _Float32 nanf32 (const char *__tagb) throw (); extern _Float32 __nanf32 (const char *__tagb) throw ();
extern _Float32 j0f32 (_Float32) throw (); extern _Float32 __j0f32 (_Float32) throw ();
extern _Float32 j1f32 (_Float32) throw (); extern _Float32 __j1f32 (_Float32) throw ();
extern _Float32 jnf32 (int, _Float32) throw (); extern _Float32 __jnf32 (int, _Float32) throw ();
extern _Float32 y0f32 (_Float32) throw (); extern _Float32 __y0f32 (_Float32) throw ();
extern _Float32 y1f32 (_Float32) throw (); extern _Float32 __y1f32 (_Float32) throw ();
extern _Float32 ynf32 (int, _Float32) throw (); extern _Float32 __ynf32 (int, _Float32) throw ();
extern _Float32 erff32 (_Float32) throw (); extern _Float32 __erff32 (_Float32) throw ();
extern _Float32 erfcf32 (_Float32) throw (); extern _Float32 __erfcf32 (_Float32) throw ();
extern _Float32 lgammaf32 (_Float32) throw (); extern _Float32 __lgammaf32 (_Float32) throw ();
extern _Float32 tgammaf32 (_Float32) throw (); extern _Float32 __tgammaf32 (_Float32) throw ();
extern _Float32 lgammaf32_r (_Float32, int *__signgamp) throw (); extern _Float32 __lgammaf32_r (_Float32, int *__signgamp) throw ();
extern _Float32 rintf32 (_Float32 __x) throw (); extern _Float32 __rintf32 (_Float32 __x) throw ();
extern _Float32 nextafterf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __nextafterf32 (_Float32 __x, _Float32 __y) throw ();
extern _Float32 nextdownf32 (_Float32 __x) throw (); extern _Float32 __nextdownf32 (_Float32 __x) throw ();
extern _Float32 nextupf32 (_Float32 __x) throw (); extern _Float32 __nextupf32 (_Float32 __x) throw ();
extern _Float32 remainderf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __remainderf32 (_Float32 __x, _Float32 __y) throw ();
extern _Float32 scalbnf32 (_Float32 __x, int __n) throw (); extern _Float32 __scalbnf32 (_Float32 __x, int __n) throw ();
extern int ilogbf32 (_Float32 __x) throw (); extern int __ilogbf32 (_Float32 __x) throw ();
extern long int llogbf32 (_Float32 __x) throw (); extern long int __llogbf32 (_Float32 __x) throw ();
extern _Float32 scalblnf32 (_Float32 __x, long int __n) throw (); extern _Float32 __scalblnf32 (_Float32 __x, long int __n) throw ();
extern _Float32 nearbyintf32 (_Float32 __x) throw (); extern _Float32 __nearbyintf32 (_Float32 __x) throw ();
extern _Float32 roundf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __roundf32 (_Float32 __x) throw () __attribute__ ((__const__));
extern _Float32 truncf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __truncf32 (_Float32 __x) throw () __attribute__ ((__const__));
extern _Float32 remquof32 (_Float32 __x, _Float32 __y, int *__quo) throw (); extern _Float32 __remquof32 (_Float32 __x, _Float32 __y, int *__quo) throw ();
extern long int lrintf32 (_Float32 __x) throw (); extern long int __lrintf32 (_Float32 __x) throw ();
__extension__
extern long long int llrintf32 (_Float32 __x) throw (); extern long long int __llrintf32 (_Float32 __x) throw ();
extern long int lroundf32 (_Float32 __x) throw (); extern long int __lroundf32 (_Float32 __x) throw ();
__extension__
extern long long int llroundf32 (_Float32 __x) throw (); extern long long int __llroundf32 (_Float32 __x) throw ();
extern _Float32 fdimf32 (_Float32 __x, _Float32 __y) throw (); extern _Float32 __fdimf32 (_Float32 __x, _Float32 __y) throw ();
extern _Float32 fmaxf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __fmaxf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
extern _Float32 fminf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __fminf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
extern _Float32 fmaf32 (_Float32 __x, _Float32 __y, _Float32 __z) throw (); extern _Float32 __fmaf32 (_Float32 __x, _Float32 __y, _Float32 __z) throw ();
extern _Float32 roundevenf32 (_Float32 __x) throw () __attribute__ ((__const__)); extern _Float32 __roundevenf32 (_Float32 __x) throw () __attribute__ ((__const__));
extern __intmax_t fromfpf32 (_Float32 __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpf32 (_Float32 __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpf32 (_Float32 __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpf32 (_Float32 __x, int __round, unsigned int __width) throw ();
extern __intmax_t fromfpxf32 (_Float32 __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpxf32 (_Float32 __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpxf32 (_Float32 __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpxf32 (_Float32 __x, int __round, unsigned int __width) throw ();
extern _Float32 fmaxmagf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __fmaxmagf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
extern _Float32 fminmagf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__)); extern _Float32 __fminmagf32 (_Float32 __x, _Float32 __y) throw () __attribute__ ((__const__));
extern int canonicalizef32 (_Float32 *__cx, const _Float32 *__x) throw ();
extern int totalorderf32 (const _Float32 *__x, const _Float32 *__y) throw ()
     __attribute__ ((__pure__));
extern int totalordermagf32 (const _Float32 *__x, const _Float32 *__y) throw ()
     __attribute__ ((__pure__));
extern _Float32 getpayloadf32 (const _Float32 *__x) throw (); extern _Float32 __getpayloadf32 (const _Float32 *__x) throw ();
extern int setpayloadf32 (_Float32 *__x, _Float32 __payload) throw ();
extern int setpayloadsigf32 (_Float32 *__x, _Float32 __payload) throw ();
extern _Float64 acosf64 (_Float64 __x) throw (); extern _Float64 __acosf64 (_Float64 __x) throw ();
extern _Float64 asinf64 (_Float64 __x) throw (); extern _Float64 __asinf64 (_Float64 __x) throw ();
extern _Float64 atanf64 (_Float64 __x) throw (); extern _Float64 __atanf64 (_Float64 __x) throw ();
extern _Float64 atan2f64 (_Float64 __y, _Float64 __x) throw (); extern _Float64 __atan2f64 (_Float64 __y, _Float64 __x) throw ();
 extern _Float64 cosf64 (_Float64 __x) throw (); extern _Float64 __cosf64 (_Float64 __x) throw ();
 extern _Float64 sinf64 (_Float64 __x) throw (); extern _Float64 __sinf64 (_Float64 __x) throw ();
extern _Float64 tanf64 (_Float64 __x) throw (); extern _Float64 __tanf64 (_Float64 __x) throw ();
extern _Float64 coshf64 (_Float64 __x) throw (); extern _Float64 __coshf64 (_Float64 __x) throw ();
extern _Float64 sinhf64 (_Float64 __x) throw (); extern _Float64 __sinhf64 (_Float64 __x) throw ();
extern _Float64 tanhf64 (_Float64 __x) throw (); extern _Float64 __tanhf64 (_Float64 __x) throw ();
 extern void sincosf64 (_Float64 __x, _Float64 *__sinx, _Float64 *__cosx) throw (); extern void __sincosf64 (_Float64 __x, _Float64 *__sinx, _Float64 *__cosx) throw ();
extern _Float64 acoshf64 (_Float64 __x) throw (); extern _Float64 __acoshf64 (_Float64 __x) throw ();
extern _Float64 asinhf64 (_Float64 __x) throw (); extern _Float64 __asinhf64 (_Float64 __x) throw ();
extern _Float64 atanhf64 (_Float64 __x) throw (); extern _Float64 __atanhf64 (_Float64 __x) throw ();
 extern _Float64 expf64 (_Float64 __x) throw (); extern _Float64 __expf64 (_Float64 __x) throw ();
extern _Float64 frexpf64 (_Float64 __x, int *__exponent) throw (); extern _Float64 __frexpf64 (_Float64 __x, int *__exponent) throw ();
extern _Float64 ldexpf64 (_Float64 __x, int __exponent) throw (); extern _Float64 __ldexpf64 (_Float64 __x, int __exponent) throw ();
 extern _Float64 logf64 (_Float64 __x) throw (); extern _Float64 __logf64 (_Float64 __x) throw ();
extern _Float64 log10f64 (_Float64 __x) throw (); extern _Float64 __log10f64 (_Float64 __x) throw ();
extern _Float64 modff64 (_Float64 __x, _Float64 *__iptr) throw (); extern _Float64 __modff64 (_Float64 __x, _Float64 *__iptr) throw () __attribute__ ((__nonnull__ (2)));
extern _Float64 exp10f64 (_Float64 __x) throw (); extern _Float64 __exp10f64 (_Float64 __x) throw ();
extern _Float64 expm1f64 (_Float64 __x) throw (); extern _Float64 __expm1f64 (_Float64 __x) throw ();
extern _Float64 log1pf64 (_Float64 __x) throw (); extern _Float64 __log1pf64 (_Float64 __x) throw ();
extern _Float64 logbf64 (_Float64 __x) throw (); extern _Float64 __logbf64 (_Float64 __x) throw ();
extern _Float64 exp2f64 (_Float64 __x) throw (); extern _Float64 __exp2f64 (_Float64 __x) throw ();
extern _Float64 log2f64 (_Float64 __x) throw (); extern _Float64 __log2f64 (_Float64 __x) throw ();
 extern _Float64 powf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __powf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float64 sqrtf64 (_Float64 __x) throw (); extern _Float64 __sqrtf64 (_Float64 __x) throw ();
extern _Float64 hypotf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __hypotf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float64 cbrtf64 (_Float64 __x) throw (); extern _Float64 __cbrtf64 (_Float64 __x) throw ();
extern _Float64 ceilf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __ceilf64 (_Float64 __x) throw () __attribute__ ((__const__));
extern _Float64 fabsf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __fabsf64 (_Float64 __x) throw () __attribute__ ((__const__));
extern _Float64 floorf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __floorf64 (_Float64 __x) throw () __attribute__ ((__const__));
extern _Float64 fmodf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __fmodf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float64 copysignf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __copysignf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
extern _Float64 nanf64 (const char *__tagb) throw (); extern _Float64 __nanf64 (const char *__tagb) throw ();
extern _Float64 j0f64 (_Float64) throw (); extern _Float64 __j0f64 (_Float64) throw ();
extern _Float64 j1f64 (_Float64) throw (); extern _Float64 __j1f64 (_Float64) throw ();
extern _Float64 jnf64 (int, _Float64) throw (); extern _Float64 __jnf64 (int, _Float64) throw ();
extern _Float64 y0f64 (_Float64) throw (); extern _Float64 __y0f64 (_Float64) throw ();
extern _Float64 y1f64 (_Float64) throw (); extern _Float64 __y1f64 (_Float64) throw ();
extern _Float64 ynf64 (int, _Float64) throw (); extern _Float64 __ynf64 (int, _Float64) throw ();
extern _Float64 erff64 (_Float64) throw (); extern _Float64 __erff64 (_Float64) throw ();
extern _Float64 erfcf64 (_Float64) throw (); extern _Float64 __erfcf64 (_Float64) throw ();
extern _Float64 lgammaf64 (_Float64) throw (); extern _Float64 __lgammaf64 (_Float64) throw ();
extern _Float64 tgammaf64 (_Float64) throw (); extern _Float64 __tgammaf64 (_Float64) throw ();
extern _Float64 lgammaf64_r (_Float64, int *__signgamp) throw (); extern _Float64 __lgammaf64_r (_Float64, int *__signgamp) throw ();
extern _Float64 rintf64 (_Float64 __x) throw (); extern _Float64 __rintf64 (_Float64 __x) throw ();
extern _Float64 nextafterf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __nextafterf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float64 nextdownf64 (_Float64 __x) throw (); extern _Float64 __nextdownf64 (_Float64 __x) throw ();
extern _Float64 nextupf64 (_Float64 __x) throw (); extern _Float64 __nextupf64 (_Float64 __x) throw ();
extern _Float64 remainderf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __remainderf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float64 scalbnf64 (_Float64 __x, int __n) throw (); extern _Float64 __scalbnf64 (_Float64 __x, int __n) throw ();
extern int ilogbf64 (_Float64 __x) throw (); extern int __ilogbf64 (_Float64 __x) throw ();
extern long int llogbf64 (_Float64 __x) throw (); extern long int __llogbf64 (_Float64 __x) throw ();
extern _Float64 scalblnf64 (_Float64 __x, long int __n) throw (); extern _Float64 __scalblnf64 (_Float64 __x, long int __n) throw ();
extern _Float64 nearbyintf64 (_Float64 __x) throw (); extern _Float64 __nearbyintf64 (_Float64 __x) throw ();
extern _Float64 roundf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __roundf64 (_Float64 __x) throw () __attribute__ ((__const__));
extern _Float64 truncf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __truncf64 (_Float64 __x) throw () __attribute__ ((__const__));
extern _Float64 remquof64 (_Float64 __x, _Float64 __y, int *__quo) throw (); extern _Float64 __remquof64 (_Float64 __x, _Float64 __y, int *__quo) throw ();
extern long int lrintf64 (_Float64 __x) throw (); extern long int __lrintf64 (_Float64 __x) throw ();
__extension__
extern long long int llrintf64 (_Float64 __x) throw (); extern long long int __llrintf64 (_Float64 __x) throw ();
extern long int lroundf64 (_Float64 __x) throw (); extern long int __lroundf64 (_Float64 __x) throw ();
__extension__
extern long long int llroundf64 (_Float64 __x) throw (); extern long long int __llroundf64 (_Float64 __x) throw ();
extern _Float64 fdimf64 (_Float64 __x, _Float64 __y) throw (); extern _Float64 __fdimf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float64 fmaxf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __fmaxf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
extern _Float64 fminf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __fminf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
extern _Float64 fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) throw (); extern _Float64 __fmaf64 (_Float64 __x, _Float64 __y, _Float64 __z) throw ();
extern _Float64 roundevenf64 (_Float64 __x) throw () __attribute__ ((__const__)); extern _Float64 __roundevenf64 (_Float64 __x) throw () __attribute__ ((__const__));
extern __intmax_t fromfpf64 (_Float64 __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpf64 (_Float64 __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpf64 (_Float64 __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpf64 (_Float64 __x, int __round, unsigned int __width) throw ();
extern __intmax_t fromfpxf64 (_Float64 __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpxf64 (_Float64 __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpxf64 (_Float64 __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpxf64 (_Float64 __x, int __round, unsigned int __width) throw ();
extern _Float64 fmaxmagf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __fmaxmagf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
extern _Float64 fminmagf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__)); extern _Float64 __fminmagf64 (_Float64 __x, _Float64 __y) throw () __attribute__ ((__const__));
extern int canonicalizef64 (_Float64 *__cx, const _Float64 *__x) throw ();
extern int totalorderf64 (const _Float64 *__x, const _Float64 *__y) throw ()
     __attribute__ ((__pure__));
extern int totalordermagf64 (const _Float64 *__x, const _Float64 *__y) throw ()
     __attribute__ ((__pure__));
extern _Float64 getpayloadf64 (const _Float64 *__x) throw (); extern _Float64 __getpayloadf64 (const _Float64 *__x) throw ();
extern int setpayloadf64 (_Float64 *__x, _Float64 __payload) throw ();
extern int setpayloadsigf64 (_Float64 *__x, _Float64 __payload) throw ();
extern _Float32x acosf32x (_Float32x __x) throw (); extern _Float32x __acosf32x (_Float32x __x) throw ();
extern _Float32x asinf32x (_Float32x __x) throw (); extern _Float32x __asinf32x (_Float32x __x) throw ();
extern _Float32x atanf32x (_Float32x __x) throw (); extern _Float32x __atanf32x (_Float32x __x) throw ();
extern _Float32x atan2f32x (_Float32x __y, _Float32x __x) throw (); extern _Float32x __atan2f32x (_Float32x __y, _Float32x __x) throw ();
 extern _Float32x cosf32x (_Float32x __x) throw (); extern _Float32x __cosf32x (_Float32x __x) throw ();
 extern _Float32x sinf32x (_Float32x __x) throw (); extern _Float32x __sinf32x (_Float32x __x) throw ();
extern _Float32x tanf32x (_Float32x __x) throw (); extern _Float32x __tanf32x (_Float32x __x) throw ();
extern _Float32x coshf32x (_Float32x __x) throw (); extern _Float32x __coshf32x (_Float32x __x) throw ();
extern _Float32x sinhf32x (_Float32x __x) throw (); extern _Float32x __sinhf32x (_Float32x __x) throw ();
extern _Float32x tanhf32x (_Float32x __x) throw (); extern _Float32x __tanhf32x (_Float32x __x) throw ();
 extern void sincosf32x (_Float32x __x, _Float32x *__sinx, _Float32x *__cosx) throw (); extern void __sincosf32x (_Float32x __x, _Float32x *__sinx, _Float32x *__cosx) throw ();
extern _Float32x acoshf32x (_Float32x __x) throw (); extern _Float32x __acoshf32x (_Float32x __x) throw ();
extern _Float32x asinhf32x (_Float32x __x) throw (); extern _Float32x __asinhf32x (_Float32x __x) throw ();
extern _Float32x atanhf32x (_Float32x __x) throw (); extern _Float32x __atanhf32x (_Float32x __x) throw ();
 extern _Float32x expf32x (_Float32x __x) throw (); extern _Float32x __expf32x (_Float32x __x) throw ();
extern _Float32x frexpf32x (_Float32x __x, int *__exponent) throw (); extern _Float32x __frexpf32x (_Float32x __x, int *__exponent) throw ();
extern _Float32x ldexpf32x (_Float32x __x, int __exponent) throw (); extern _Float32x __ldexpf32x (_Float32x __x, int __exponent) throw ();
 extern _Float32x logf32x (_Float32x __x) throw (); extern _Float32x __logf32x (_Float32x __x) throw ();
extern _Float32x log10f32x (_Float32x __x) throw (); extern _Float32x __log10f32x (_Float32x __x) throw ();
extern _Float32x modff32x (_Float32x __x, _Float32x *__iptr) throw (); extern _Float32x __modff32x (_Float32x __x, _Float32x *__iptr) throw () __attribute__ ((__nonnull__ (2)));
extern _Float32x exp10f32x (_Float32x __x) throw (); extern _Float32x __exp10f32x (_Float32x __x) throw ();
extern _Float32x expm1f32x (_Float32x __x) throw (); extern _Float32x __expm1f32x (_Float32x __x) throw ();
extern _Float32x log1pf32x (_Float32x __x) throw (); extern _Float32x __log1pf32x (_Float32x __x) throw ();
extern _Float32x logbf32x (_Float32x __x) throw (); extern _Float32x __logbf32x (_Float32x __x) throw ();
extern _Float32x exp2f32x (_Float32x __x) throw (); extern _Float32x __exp2f32x (_Float32x __x) throw ();
extern _Float32x log2f32x (_Float32x __x) throw (); extern _Float32x __log2f32x (_Float32x __x) throw ();
 extern _Float32x powf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __powf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32x sqrtf32x (_Float32x __x) throw (); extern _Float32x __sqrtf32x (_Float32x __x) throw ();
extern _Float32x hypotf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __hypotf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32x cbrtf32x (_Float32x __x) throw (); extern _Float32x __cbrtf32x (_Float32x __x) throw ();
extern _Float32x ceilf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __ceilf32x (_Float32x __x) throw () __attribute__ ((__const__));
extern _Float32x fabsf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __fabsf32x (_Float32x __x) throw () __attribute__ ((__const__));
extern _Float32x floorf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __floorf32x (_Float32x __x) throw () __attribute__ ((__const__));
extern _Float32x fmodf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __fmodf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32x copysignf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __copysignf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
extern _Float32x nanf32x (const char *__tagb) throw (); extern _Float32x __nanf32x (const char *__tagb) throw ();
extern _Float32x j0f32x (_Float32x) throw (); extern _Float32x __j0f32x (_Float32x) throw ();
extern _Float32x j1f32x (_Float32x) throw (); extern _Float32x __j1f32x (_Float32x) throw ();
extern _Float32x jnf32x (int, _Float32x) throw (); extern _Float32x __jnf32x (int, _Float32x) throw ();
extern _Float32x y0f32x (_Float32x) throw (); extern _Float32x __y0f32x (_Float32x) throw ();
extern _Float32x y1f32x (_Float32x) throw (); extern _Float32x __y1f32x (_Float32x) throw ();
extern _Float32x ynf32x (int, _Float32x) throw (); extern _Float32x __ynf32x (int, _Float32x) throw ();
extern _Float32x erff32x (_Float32x) throw (); extern _Float32x __erff32x (_Float32x) throw ();
extern _Float32x erfcf32x (_Float32x) throw (); extern _Float32x __erfcf32x (_Float32x) throw ();
extern _Float32x lgammaf32x (_Float32x) throw (); extern _Float32x __lgammaf32x (_Float32x) throw ();
extern _Float32x tgammaf32x (_Float32x) throw (); extern _Float32x __tgammaf32x (_Float32x) throw ();
extern _Float32x lgammaf32x_r (_Float32x, int *__signgamp) throw (); extern _Float32x __lgammaf32x_r (_Float32x, int *__signgamp) throw ();
extern _Float32x rintf32x (_Float32x __x) throw (); extern _Float32x __rintf32x (_Float32x __x) throw ();
extern _Float32x nextafterf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __nextafterf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32x nextdownf32x (_Float32x __x) throw (); extern _Float32x __nextdownf32x (_Float32x __x) throw ();
extern _Float32x nextupf32x (_Float32x __x) throw (); extern _Float32x __nextupf32x (_Float32x __x) throw ();
extern _Float32x remainderf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __remainderf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32x scalbnf32x (_Float32x __x, int __n) throw (); extern _Float32x __scalbnf32x (_Float32x __x, int __n) throw ();
extern int ilogbf32x (_Float32x __x) throw (); extern int __ilogbf32x (_Float32x __x) throw ();
extern long int llogbf32x (_Float32x __x) throw (); extern long int __llogbf32x (_Float32x __x) throw ();
extern _Float32x scalblnf32x (_Float32x __x, long int __n) throw (); extern _Float32x __scalblnf32x (_Float32x __x, long int __n) throw ();
extern _Float32x nearbyintf32x (_Float32x __x) throw (); extern _Float32x __nearbyintf32x (_Float32x __x) throw ();
extern _Float32x roundf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __roundf32x (_Float32x __x) throw () __attribute__ ((__const__));
extern _Float32x truncf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __truncf32x (_Float32x __x) throw () __attribute__ ((__const__));
extern _Float32x remquof32x (_Float32x __x, _Float32x __y, int *__quo) throw (); extern _Float32x __remquof32x (_Float32x __x, _Float32x __y, int *__quo) throw ();
extern long int lrintf32x (_Float32x __x) throw (); extern long int __lrintf32x (_Float32x __x) throw ();
__extension__
extern long long int llrintf32x (_Float32x __x) throw (); extern long long int __llrintf32x (_Float32x __x) throw ();
extern long int lroundf32x (_Float32x __x) throw (); extern long int __lroundf32x (_Float32x __x) throw ();
__extension__
extern long long int llroundf32x (_Float32x __x) throw (); extern long long int __llroundf32x (_Float32x __x) throw ();
extern _Float32x fdimf32x (_Float32x __x, _Float32x __y) throw (); extern _Float32x __fdimf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32x fmaxf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __fmaxf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
extern _Float32x fminf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __fminf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
extern _Float32x fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) throw (); extern _Float32x __fmaf32x (_Float32x __x, _Float32x __y, _Float32x __z) throw ();
extern _Float32x roundevenf32x (_Float32x __x) throw () __attribute__ ((__const__)); extern _Float32x __roundevenf32x (_Float32x __x) throw () __attribute__ ((__const__));
extern __intmax_t fromfpf32x (_Float32x __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpf32x (_Float32x __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpf32x (_Float32x __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpf32x (_Float32x __x, int __round, unsigned int __width) throw ();
extern __intmax_t fromfpxf32x (_Float32x __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpxf32x (_Float32x __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpxf32x (_Float32x __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpxf32x (_Float32x __x, int __round, unsigned int __width) throw ();
extern _Float32x fmaxmagf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __fmaxmagf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
extern _Float32x fminmagf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__)); extern _Float32x __fminmagf32x (_Float32x __x, _Float32x __y) throw () __attribute__ ((__const__));
extern int canonicalizef32x (_Float32x *__cx, const _Float32x *__x) throw ();
extern int totalorderf32x (const _Float32x *__x, const _Float32x *__y) throw ()
     __attribute__ ((__pure__));
extern int totalordermagf32x (const _Float32x *__x, const _Float32x *__y) throw ()
     __attribute__ ((__pure__));
extern _Float32x getpayloadf32x (const _Float32x *__x) throw (); extern _Float32x __getpayloadf32x (const _Float32x *__x) throw ();
extern int setpayloadf32x (_Float32x *__x, _Float32x __payload) throw ();
extern int setpayloadsigf32x (_Float32x *__x, _Float32x __payload) throw ();
extern _Float64x acosf64x (_Float64x __x) throw (); extern _Float64x __acosf64x (_Float64x __x) throw ();
extern _Float64x asinf64x (_Float64x __x) throw (); extern _Float64x __asinf64x (_Float64x __x) throw ();
extern _Float64x atanf64x (_Float64x __x) throw (); extern _Float64x __atanf64x (_Float64x __x) throw ();
extern _Float64x atan2f64x (_Float64x __y, _Float64x __x) throw (); extern _Float64x __atan2f64x (_Float64x __y, _Float64x __x) throw ();
 extern _Float64x cosf64x (_Float64x __x) throw (); extern _Float64x __cosf64x (_Float64x __x) throw ();
 extern _Float64x sinf64x (_Float64x __x) throw (); extern _Float64x __sinf64x (_Float64x __x) throw ();
extern _Float64x tanf64x (_Float64x __x) throw (); extern _Float64x __tanf64x (_Float64x __x) throw ();
extern _Float64x coshf64x (_Float64x __x) throw (); extern _Float64x __coshf64x (_Float64x __x) throw ();
extern _Float64x sinhf64x (_Float64x __x) throw (); extern _Float64x __sinhf64x (_Float64x __x) throw ();
extern _Float64x tanhf64x (_Float64x __x) throw (); extern _Float64x __tanhf64x (_Float64x __x) throw ();
 extern void sincosf64x (_Float64x __x, _Float64x *__sinx, _Float64x *__cosx) throw (); extern void __sincosf64x (_Float64x __x, _Float64x *__sinx, _Float64x *__cosx) throw ();
extern _Float64x acoshf64x (_Float64x __x) throw (); extern _Float64x __acoshf64x (_Float64x __x) throw ();
extern _Float64x asinhf64x (_Float64x __x) throw (); extern _Float64x __asinhf64x (_Float64x __x) throw ();
extern _Float64x atanhf64x (_Float64x __x) throw (); extern _Float64x __atanhf64x (_Float64x __x) throw ();
 extern _Float64x expf64x (_Float64x __x) throw (); extern _Float64x __expf64x (_Float64x __x) throw ();
extern _Float64x frexpf64x (_Float64x __x, int *__exponent) throw (); extern _Float64x __frexpf64x (_Float64x __x, int *__exponent) throw ();
extern _Float64x ldexpf64x (_Float64x __x, int __exponent) throw (); extern _Float64x __ldexpf64x (_Float64x __x, int __exponent) throw ();
 extern _Float64x logf64x (_Float64x __x) throw (); extern _Float64x __logf64x (_Float64x __x) throw ();
extern _Float64x log10f64x (_Float64x __x) throw (); extern _Float64x __log10f64x (_Float64x __x) throw ();
extern _Float64x modff64x (_Float64x __x, _Float64x *__iptr) throw (); extern _Float64x __modff64x (_Float64x __x, _Float64x *__iptr) throw () __attribute__ ((__nonnull__ (2)));
extern _Float64x exp10f64x (_Float64x __x) throw (); extern _Float64x __exp10f64x (_Float64x __x) throw ();
extern _Float64x expm1f64x (_Float64x __x) throw (); extern _Float64x __expm1f64x (_Float64x __x) throw ();
extern _Float64x log1pf64x (_Float64x __x) throw (); extern _Float64x __log1pf64x (_Float64x __x) throw ();
extern _Float64x logbf64x (_Float64x __x) throw (); extern _Float64x __logbf64x (_Float64x __x) throw ();
extern _Float64x exp2f64x (_Float64x __x) throw (); extern _Float64x __exp2f64x (_Float64x __x) throw ();
extern _Float64x log2f64x (_Float64x __x) throw (); extern _Float64x __log2f64x (_Float64x __x) throw ();
 extern _Float64x powf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __powf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64x sqrtf64x (_Float64x __x) throw (); extern _Float64x __sqrtf64x (_Float64x __x) throw ();
extern _Float64x hypotf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __hypotf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64x cbrtf64x (_Float64x __x) throw (); extern _Float64x __cbrtf64x (_Float64x __x) throw ();
extern _Float64x ceilf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __ceilf64x (_Float64x __x) throw () __attribute__ ((__const__));
extern _Float64x fabsf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __fabsf64x (_Float64x __x) throw () __attribute__ ((__const__));
extern _Float64x floorf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __floorf64x (_Float64x __x) throw () __attribute__ ((__const__));
extern _Float64x fmodf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __fmodf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64x copysignf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __copysignf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
extern _Float64x nanf64x (const char *__tagb) throw (); extern _Float64x __nanf64x (const char *__tagb) throw ();
extern _Float64x j0f64x (_Float64x) throw (); extern _Float64x __j0f64x (_Float64x) throw ();
extern _Float64x j1f64x (_Float64x) throw (); extern _Float64x __j1f64x (_Float64x) throw ();
extern _Float64x jnf64x (int, _Float64x) throw (); extern _Float64x __jnf64x (int, _Float64x) throw ();
extern _Float64x y0f64x (_Float64x) throw (); extern _Float64x __y0f64x (_Float64x) throw ();
extern _Float64x y1f64x (_Float64x) throw (); extern _Float64x __y1f64x (_Float64x) throw ();
extern _Float64x ynf64x (int, _Float64x) throw (); extern _Float64x __ynf64x (int, _Float64x) throw ();
extern _Float64x erff64x (_Float64x) throw (); extern _Float64x __erff64x (_Float64x) throw ();
extern _Float64x erfcf64x (_Float64x) throw (); extern _Float64x __erfcf64x (_Float64x) throw ();
extern _Float64x lgammaf64x (_Float64x) throw (); extern _Float64x __lgammaf64x (_Float64x) throw ();
extern _Float64x tgammaf64x (_Float64x) throw (); extern _Float64x __tgammaf64x (_Float64x) throw ();
extern _Float64x lgammaf64x_r (_Float64x, int *__signgamp) throw (); extern _Float64x __lgammaf64x_r (_Float64x, int *__signgamp) throw ();
extern _Float64x rintf64x (_Float64x __x) throw (); extern _Float64x __rintf64x (_Float64x __x) throw ();
extern _Float64x nextafterf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __nextafterf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64x nextdownf64x (_Float64x __x) throw (); extern _Float64x __nextdownf64x (_Float64x __x) throw ();
extern _Float64x nextupf64x (_Float64x __x) throw (); extern _Float64x __nextupf64x (_Float64x __x) throw ();
extern _Float64x remainderf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __remainderf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64x scalbnf64x (_Float64x __x, int __n) throw (); extern _Float64x __scalbnf64x (_Float64x __x, int __n) throw ();
extern int ilogbf64x (_Float64x __x) throw (); extern int __ilogbf64x (_Float64x __x) throw ();
extern long int llogbf64x (_Float64x __x) throw (); extern long int __llogbf64x (_Float64x __x) throw ();
extern _Float64x scalblnf64x (_Float64x __x, long int __n) throw (); extern _Float64x __scalblnf64x (_Float64x __x, long int __n) throw ();
extern _Float64x nearbyintf64x (_Float64x __x) throw (); extern _Float64x __nearbyintf64x (_Float64x __x) throw ();
extern _Float64x roundf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __roundf64x (_Float64x __x) throw () __attribute__ ((__const__));
extern _Float64x truncf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __truncf64x (_Float64x __x) throw () __attribute__ ((__const__));
extern _Float64x remquof64x (_Float64x __x, _Float64x __y, int *__quo) throw (); extern _Float64x __remquof64x (_Float64x __x, _Float64x __y, int *__quo) throw ();
extern long int lrintf64x (_Float64x __x) throw (); extern long int __lrintf64x (_Float64x __x) throw ();
__extension__
extern long long int llrintf64x (_Float64x __x) throw (); extern long long int __llrintf64x (_Float64x __x) throw ();
extern long int lroundf64x (_Float64x __x) throw (); extern long int __lroundf64x (_Float64x __x) throw ();
__extension__
extern long long int llroundf64x (_Float64x __x) throw (); extern long long int __llroundf64x (_Float64x __x) throw ();
extern _Float64x fdimf64x (_Float64x __x, _Float64x __y) throw (); extern _Float64x __fdimf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64x fmaxf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __fmaxf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
extern _Float64x fminf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __fminf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
extern _Float64x fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) throw (); extern _Float64x __fmaf64x (_Float64x __x, _Float64x __y, _Float64x __z) throw ();
extern _Float64x roundevenf64x (_Float64x __x) throw () __attribute__ ((__const__)); extern _Float64x __roundevenf64x (_Float64x __x) throw () __attribute__ ((__const__));
extern __intmax_t fromfpf64x (_Float64x __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpf64x (_Float64x __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpf64x (_Float64x __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpf64x (_Float64x __x, int __round, unsigned int __width) throw ();
extern __intmax_t fromfpxf64x (_Float64x __x, int __round, unsigned int __width) throw (); extern __intmax_t __fromfpxf64x (_Float64x __x, int __round, unsigned int __width) throw ();
extern __uintmax_t ufromfpxf64x (_Float64x __x, int __round, unsigned int __width) throw (); extern __uintmax_t __ufromfpxf64x (_Float64x __x, int __round, unsigned int __width) throw ();
extern _Float64x fmaxmagf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __fmaxmagf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
extern _Float64x fminmagf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__)); extern _Float64x __fminmagf64x (_Float64x __x, _Float64x __y) throw () __attribute__ ((__const__));
extern int canonicalizef64x (_Float64x *__cx, const _Float64x *__x) throw ();
extern int totalorderf64x (const _Float64x *__x, const _Float64x *__y) throw ()
     __attribute__ ((__pure__));
extern int totalordermagf64x (const _Float64x *__x, const _Float64x *__y) throw ()
     __attribute__ ((__pure__));
extern _Float64x getpayloadf64x (const _Float64x *__x) throw (); extern _Float64x __getpayloadf64x (const _Float64x *__x) throw ();
extern int setpayloadf64x (_Float64x *__x, _Float64x __payload) throw ();
extern int setpayloadsigf64x (_Float64x *__x, _Float64x __payload) throw ();
extern float fadd (double __x, double __y) throw ();
extern float fdiv (double __x, double __y) throw ();
extern float fmul (double __x, double __y) throw ();
extern float fsub (double __x, double __y) throw ();
extern float faddl (long double __x, long double __y) throw ();
extern float fdivl (long double __x, long double __y) throw ();
extern float fmull (long double __x, long double __y) throw ();
extern float fsubl (long double __x, long double __y) throw ();
extern double daddl (long double __x, long double __y) throw ();
extern double ddivl (long double __x, long double __y) throw ();
extern double dmull (long double __x, long double __y) throw ();
extern double dsubl (long double __x, long double __y) throw ();
extern _Float32 f32addf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32 f32divf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32 f32mulf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32 f32subf32x (_Float32x __x, _Float32x __y) throw ();
extern _Float32 f32addf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float32 f32divf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float32 f32mulf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float32 f32subf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float32 f32addf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float32 f32divf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float32 f32mulf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float32 f32subf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float32x f32xaddf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float32x f32xdivf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float32x f32xmulf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float32x f32xsubf64 (_Float64 __x, _Float64 __y) throw ();
extern _Float32x f32xaddf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float32x f32xdivf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float32x f32xmulf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float32x f32xsubf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64 f64addf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64 f64divf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64 f64mulf64x (_Float64x __x, _Float64x __y) throw ();
extern _Float64 f64subf64x (_Float64x __x, _Float64x __y) throw ();
extern int signgam;
enum
  
{
    FP_NAN =
      0,
    FP_INFINITE =
      1,
    FP_ZERO =
      2,
    FP_SUBNORMAL =
      3,
    FP_NORMAL =
      4
  };
extern int __iscanonicall (long double __x)
     throw () __attribute__ ((__const__));
extern "C++" 
{
inline int iscanonical (float __val) { return ((void) (__typeof (__val)) (__val), 1); }
{
inline int iscanonical (double __val) { return ((void) (__typeof (__val)) (__val), 1); }
{
inline int iscanonical (long double __val) { return __iscanonicall (__val); }
{
}
extern "C++" 
{
inline int issignaling (float __val) { return __issignalingf (__val); }
{
inline int issignaling (double __val) { return __issignaling (__val); }
{
inline int
issignaling (long double __val)
{
  return __issignalingl (__val);
}
}
extern "C++" 
{
template <class __T> inline bool
iszero (__T __val)
{
  return __val == 0;
}
}
extern "C++" 
{
template<typename> struct __iseqsig_type;
template<> struct __iseqsig_type<float>
{
  static int __call (float __x, float __y) throw ()
  
{
    return __iseqsigf (__x, __y);
  }
};
template<> struct __iseqsig_type<double>
{
  static int __call (double __x, double __y) throw ()
  
{
    return __iseqsig (__x, __y);
  }
};
template<> struct __iseqsig_type<long double>
{
  static int __call (long double __x, long double __y) throw ()
  
{
    return __iseqsigl (__x, __y);
  }
};
template<typename _T1, typename _T2>
inline int
iseqsig (_T1 __x, _T2 __y) throw ()
{
  typedef decltype (((__x) + (__y) + 0.0f)) _T3;
  return __iseqsig_type<_T3>::__call (__x, __y);
}
}
}
extern "C++"
{
namespace std __attribute__ ((__visibility__ ("default")))
{
  using ::acos;
  inline constexpr float
  acos(float __x)
  { return __builtin_acosf(__x); }
{
  inline constexpr long double
  acos(long double __x)
  { return __builtin_acosl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    acos(_Tp __x)
    { return __builtin_acos(__x); }
{
  using ::asin;
  inline constexpr float
  asin(float __x)
  { return __builtin_asinf(__x); }
{
  inline constexpr long double
  asin(long double __x)
  { return __builtin_asinl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    asin(_Tp __x)
    { return __builtin_asin(__x); }
{
  using ::atan;
  inline constexpr float
  atan(float __x)
  { return __builtin_atanf(__x); }
{
  inline constexpr long double
  atan(long double __x)
  { return __builtin_atanl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    atan(_Tp __x)
    { return __builtin_atan(__x); }
{
  using ::atan2;
  inline constexpr float
  atan2(float __y, float __x)
  { return __builtin_atan2f(__y, __x); }
{
  inline constexpr long double
  atan2(long double __y, long double __x)
  { return __builtin_atan2l(__y, __x); }
{
  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    atan2(_Tp __y, _Up __x)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return atan2(__type(__y), __type(__x));
    }
  using ::ceil;
  inline constexpr float
  ceil(float __x)
  { return __builtin_ceilf(__x); }
{
  inline constexpr long double
  ceil(long double __x)
  { return __builtin_ceill(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    ceil(_Tp __x)
    { return __builtin_ceil(__x); }
{
  using ::cos;
  inline constexpr float
  cos(float __x)
  { return __builtin_cosf(__x); }
{
  inline constexpr long double
  cos(long double __x)
  { return __builtin_cosl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    cos(_Tp __x)
    { return __builtin_cos(__x); }
{
  using ::cosh;
  inline constexpr float
  cosh(float __x)
  { return __builtin_coshf(__x); }
{
  inline constexpr long double
  cosh(long double __x)
  { return __builtin_coshl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    cosh(_Tp __x)
    { return __builtin_cosh(__x); }
{
  using ::exp;
  inline constexpr float
  exp(float __x)
  { return __builtin_expf(__x); }
{
  inline constexpr long double
  exp(long double __x)
  { return __builtin_expl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    exp(_Tp __x)
    { return __builtin_exp(__x); }
{
  using ::fabs;
  inline constexpr float
  fabs(float __x)
  { return __builtin_fabsf(__x); }
{
  inline constexpr long double
  fabs(long double __x)
  { return __builtin_fabsl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    fabs(_Tp __x)
    { return __builtin_fabs(__x); }
{
  using ::floor;
  inline constexpr float
  floor(float __x)
  { return __builtin_floorf(__x); }
{
  inline constexpr long double
  floor(long double __x)
  { return __builtin_floorl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    floor(_Tp __x)
    { return __builtin_floor(__x); }
{
  using ::fmod;
  inline constexpr float
  fmod(float __x, float __y)
  { return __builtin_fmodf(__x, __y); }
{
  inline constexpr long double
  fmod(long double __x, long double __y)
  { return __builtin_fmodl(__x, __y); }
{
  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmod(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmod(__type(__x), __type(__y));
    }
  using ::frexp;
  inline float
  frexp(float __x, int* __exp)
  { return __builtin_frexpf(__x, __exp); }
{
  inline long double
  frexp(long double __x, int* __exp)
  { return __builtin_frexpl(__x, __exp); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    frexp(_Tp __x, int* __exp)
    { return __builtin_frexp(__x, __exp); }
{
  using ::ldexp;
  inline constexpr float
  ldexp(float __x, int __exp)
  { return __builtin_ldexpf(__x, __exp); }
{
  inline constexpr long double
  ldexp(long double __x, int __exp)
  { return __builtin_ldexpl(__x, __exp); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    ldexp(_Tp __x, int __exp)
    { return __builtin_ldexp(__x, __exp); }
{
  using ::log;
  inline constexpr float
  log(float __x)
  { return __builtin_logf(__x); }
{
  inline constexpr long double
  log(long double __x)
  { return __builtin_logl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    log(_Tp __x)
    { return __builtin_log(__x); }
{
  using ::log10;
  inline constexpr float
  log10(float __x)
  { return __builtin_log10f(__x); }
{
  inline constexpr long double
  log10(long double __x)
  { return __builtin_log10l(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    log10(_Tp __x)
    { return __builtin_log10(__x); }
{
  using ::modf;
  inline float
  modf(float __x, float* __iptr)
  { return __builtin_modff(__x, __iptr); }
{
  inline long double
  modf(long double __x, long double* __iptr)
  { return __builtin_modfl(__x, __iptr); }
{
  using ::pow;
  inline constexpr float
  pow(float __x, float __y)
  { return __builtin_powf(__x, __y); }
{
  inline constexpr long double
  pow(long double __x, long double __y)
  { return __builtin_powl(__x, __y); }
{
  template<typename _Tp, typename _Up>
    inline constexpr
    typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    pow(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return pow(__type(__x), __type(__y));
    }
  using ::sin;
  inline constexpr float
  sin(float __x)
  { return __builtin_sinf(__x); }
{
  inline constexpr long double
  sin(long double __x)
  { return __builtin_sinl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sin(_Tp __x)
    { return __builtin_sin(__x); }
{
  using ::sinh;
  inline constexpr float
  sinh(float __x)
  { return __builtin_sinhf(__x); }
{
  inline constexpr long double
  sinh(long double __x)
  { return __builtin_sinhl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sinh(_Tp __x)
    { return __builtin_sinh(__x); }
{
  using ::sqrt;
  inline constexpr float
  sqrt(float __x)
  { return __builtin_sqrtf(__x); }
{
  inline constexpr long double
  sqrt(long double __x)
  { return __builtin_sqrtl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    sqrt(_Tp __x)
    { return __builtin_sqrt(__x); }
{
  using ::tan;
  inline constexpr float
  tan(float __x)
  { return __builtin_tanf(__x); }
{
  inline constexpr long double
  tan(long double __x)
  { return __builtin_tanl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    tan(_Tp __x)
    { return __builtin_tan(__x); }
{
  using ::tanh;
  inline constexpr float
  tanh(float __x)
  { return __builtin_tanhf(__x); }
{
  inline constexpr long double
  tanh(long double __x)
  { return __builtin_tanhl(__x); }
{
  template<typename _Tp>
    inline constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    double>::__type
    tanh(_Tp __x)
    { return __builtin_tanh(__x); }
{
  constexpr int
  fpclassify(float __x)
  { return __builtin_fpclassify(0, 1, 4,
{
    3, 2, __x); }
  constexpr int
  fpclassify(double __x)
  { return __builtin_fpclassify(0, 1, 4,
{
    3, 2, __x); }
  constexpr int
  fpclassify(long double __x)
  { return __builtin_fpclassify(0, 1, 4,
{
    3, 2, __x); }
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              int>::__type
    fpclassify(_Tp __x)
    { return __x != 0 ? 4 : 2; }
{
  constexpr bool
  isfinite(float __x)
  { return __builtin_isfinite(__x); }
{
  constexpr bool
  isfinite(double __x)
  { return __builtin_isfinite(__x); }
{
  constexpr bool
  isfinite(long double __x)
  { return __builtin_isfinite(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isfinite(_Tp __x)
    { return true; }
{
  constexpr bool
  isinf(float __x)
  { return __builtin_isinf(__x); }
{
  constexpr bool
  isinf(double __x)
  { return __builtin_isinf(__x); }
{
  constexpr bool
  isinf(long double __x)
  { return __builtin_isinf(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isinf(_Tp __x)
    { return false; }
{
  constexpr bool
  isnan(float __x)
  { return __builtin_isnan(__x); }
{
  constexpr bool
  isnan(double __x)
  { return __builtin_isnan(__x); }
{
  constexpr bool
  isnan(long double __x)
  { return __builtin_isnan(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isnan(_Tp __x)
    { return false; }
{
  constexpr bool
  isnormal(float __x)
  { return __builtin_isnormal(__x); }
{
  constexpr bool
  isnormal(double __x)
  { return __builtin_isnormal(__x); }
{
  constexpr bool
  isnormal(long double __x)
  { return __builtin_isnormal(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    isnormal(_Tp __x)
    { return __x != 0 ? true : false; }
{
  constexpr bool
  signbit(float __x)
  { return __builtin_signbit(__x); }
{
  constexpr bool
  signbit(double __x)
  { return __builtin_signbit(__x); }
{
  constexpr bool
  signbit(long double __x)
  { return __builtin_signbit(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              bool>::__type
    signbit(_Tp __x)
    { return __x < 0 ? true : false; }
{
  constexpr bool
  isgreater(float __x, float __y)
  { return __builtin_isgreater(__x, __y); }
{
  constexpr bool
  isgreater(double __x, double __y)
  { return __builtin_isgreater(__x, __y); }
{
  constexpr bool
  isgreater(long double __x, long double __y)
  { return __builtin_isgreater(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isgreater(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isgreater(__type(__x), __type(__y));
    }
  constexpr bool
  isgreaterequal(float __x, float __y)
  { return __builtin_isgreaterequal(__x, __y); }
{
  constexpr bool
  isgreaterequal(double __x, double __y)
  { return __builtin_isgreaterequal(__x, __y); }
{
  constexpr bool
  isgreaterequal(long double __x, long double __y)
  { return __builtin_isgreaterequal(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isgreaterequal(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isgreaterequal(__type(__x), __type(__y));
    }
  constexpr bool
  isless(float __x, float __y)
  { return __builtin_isless(__x, __y); }
{
  constexpr bool
  isless(double __x, double __y)
  { return __builtin_isless(__x, __y); }
{
  constexpr bool
  isless(long double __x, long double __y)
  { return __builtin_isless(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isless(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isless(__type(__x), __type(__y));
    }
  constexpr bool
  islessequal(float __x, float __y)
  { return __builtin_islessequal(__x, __y); }
{
  constexpr bool
  islessequal(double __x, double __y)
  { return __builtin_islessequal(__x, __y); }
{
  constexpr bool
  islessequal(long double __x, long double __y)
  { return __builtin_islessequal(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    islessequal(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_islessequal(__type(__x), __type(__y));
    }
  constexpr bool
  islessgreater(float __x, float __y)
  { return __builtin_islessgreater(__x, __y); }
{
  constexpr bool
  islessgreater(double __x, double __y)
  { return __builtin_islessgreater(__x, __y); }
{
  constexpr bool
  islessgreater(long double __x, long double __y)
  { return __builtin_islessgreater(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    islessgreater(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_islessgreater(__type(__x), __type(__y));
    }
  constexpr bool
  isunordered(float __x, float __y)
  { return __builtin_isunordered(__x, __y); }
{
  constexpr bool
  isunordered(double __x, double __y)
  { return __builtin_isunordered(__x, __y); }
{
  constexpr bool
  isunordered(long double __x, long double __y)
  { return __builtin_isunordered(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename
    __gnu_cxx::__enable_if<(__is_arithmetic<_Tp>::__value
       && __is_arithmetic<_Up>::__value), bool>::__type
    isunordered(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return __builtin_isunordered(__type(__x), __type(__y));
    }
  using ::double_t;
  using ::float_t;
  using ::acosh;
  using ::acoshf;
  using ::acoshl;
  using ::asinh;
  using ::asinhf;
  using ::asinhl;
  using ::atanh;
  using ::atanhf;
  using ::atanhl;
  using ::cbrt;
  using ::cbrtf;
  using ::cbrtl;
  using ::copysign;
  using ::copysignf;
  using ::copysignl;
  using ::erf;
  using ::erff;
  using ::erfl;
  using ::erfc;
  using ::erfcf;
  using ::erfcl;
  using ::exp2;
  using ::exp2f;
  using ::exp2l;
  using ::expm1;
  using ::expm1f;
  using ::expm1l;
  using ::fdim;
  using ::fdimf;
  using ::fdiml;
  using ::fma;
  using ::fmaf;
  using ::fmal;
  using ::fmax;
  using ::fmaxf;
  using ::fmaxl;
  using ::fmin;
  using ::fminf;
  using ::fminl;
  using ::hypot;
  using ::hypotf;
  using ::hypotl;
  using ::ilogb;
  using ::ilogbf;
  using ::ilogbl;
  using ::lgamma;
  using ::lgammaf;
  using ::lgammal;
  using ::llrint;
  using ::llrintf;
  using ::llrintl;
  using ::llround;
  using ::llroundf;
  using ::llroundl;
  using ::log1p;
  using ::log1pf;
  using ::log1pl;
  using ::log2;
  using ::log2f;
  using ::log2l;
  using ::logb;
  using ::logbf;
  using ::logbl;
  using ::lrint;
  using ::lrintf;
  using ::lrintl;
  using ::lround;
  using ::lroundf;
  using ::lroundl;
  using ::nan;
  using ::nanf;
  using ::nanl;
  using ::nearbyint;
  using ::nearbyintf;
  using ::nearbyintl;
  using ::nextafter;
  using ::nextafterf;
  using ::nextafterl;
  using ::nexttoward;
  using ::nexttowardf;
  using ::nexttowardl;
  using ::remainder;
  using ::remainderf;
  using ::remainderl;
  using ::remquo;
  using ::remquof;
  using ::remquol;
  using ::rint;
  using ::rintf;
  using ::rintl;
  using ::round;
  using ::roundf;
  using ::roundl;
  using ::scalbln;
  using ::scalblnf;
  using ::scalblnl;
  using ::scalbn;
  using ::scalbnf;
  using ::scalbnl;
  using ::tgamma;
  using ::tgammaf;
  using ::tgammal;
  using ::trunc;
  using ::truncf;
  using ::truncl;
  constexpr float
  acosh(float __x)
  { return __builtin_acoshf(__x); }
{
  constexpr long double
  acosh(long double __x)
  { return __builtin_acoshl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    acosh(_Tp __x)
    { return __builtin_acosh(__x); }
{
  constexpr float
  asinh(float __x)
  { return __builtin_asinhf(__x); }
{
  constexpr long double
  asinh(long double __x)
  { return __builtin_asinhl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    asinh(_Tp __x)
    { return __builtin_asinh(__x); }
{
  constexpr float
  atanh(float __x)
  { return __builtin_atanhf(__x); }
{
  constexpr long double
  atanh(long double __x)
  { return __builtin_atanhl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    atanh(_Tp __x)
    { return __builtin_atanh(__x); }
{
  constexpr float
  cbrt(float __x)
  { return __builtin_cbrtf(__x); }
{
  constexpr long double
  cbrt(long double __x)
  { return __builtin_cbrtl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    cbrt(_Tp __x)
    { return __builtin_cbrt(__x); }
{
  constexpr float
  copysign(float __x, float __y)
  { return __builtin_copysignf(__x, __y); }
{
  constexpr long double
  copysign(long double __x, long double __y)
  { return __builtin_copysignl(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    copysign(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return copysign(__type(__x), __type(__y));
    }
  constexpr float
  erf(float __x)
  { return __builtin_erff(__x); }
{
  constexpr long double
  erf(long double __x)
  { return __builtin_erfl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    erf(_Tp __x)
    { return __builtin_erf(__x); }
{
  constexpr float
  erfc(float __x)
  { return __builtin_erfcf(__x); }
{
  constexpr long double
  erfc(long double __x)
  { return __builtin_erfcl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    erfc(_Tp __x)
    { return __builtin_erfc(__x); }
{
  constexpr float
  exp2(float __x)
  { return __builtin_exp2f(__x); }
{
  constexpr long double
  exp2(long double __x)
  { return __builtin_exp2l(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    exp2(_Tp __x)
    { return __builtin_exp2(__x); }
{
  constexpr float
  expm1(float __x)
  { return __builtin_expm1f(__x); }
{
  constexpr long double
  expm1(long double __x)
  { return __builtin_expm1l(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    expm1(_Tp __x)
    { return __builtin_expm1(__x); }
{
  constexpr float
  fdim(float __x, float __y)
  { return __builtin_fdimf(__x, __y); }
{
  constexpr long double
  fdim(long double __x, long double __y)
  { return __builtin_fdiml(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fdim(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fdim(__type(__x), __type(__y));
    }
  constexpr float
  fma(float __x, float __y, float __z)
  { return __builtin_fmaf(__x, __y, __z); }
{
  constexpr long double
  fma(long double __x, long double __y, long double __z)
  { return __builtin_fmal(__x, __y, __z); }
{
  template<typename _Tp, typename _Up, typename _Vp>
    constexpr typename __gnu_cxx::__promote_3<_Tp, _Up, _Vp>::__type
    fma(_Tp __x, _Up __y, _Vp __z)
    
{
      typedef typename __gnu_cxx::__promote_3<_Tp, _Up, _Vp>::__type __type;
      return fma(__type(__x), __type(__y), __type(__z));
    }
  constexpr float
  fmax(float __x, float __y)
  { return __builtin_fmaxf(__x, __y); }
{
  constexpr long double
  fmax(long double __x, long double __y)
  { return __builtin_fmaxl(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmax(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmax(__type(__x), __type(__y));
    }
  constexpr float
  fmin(float __x, float __y)
  { return __builtin_fminf(__x, __y); }
{
  constexpr long double
  fmin(long double __x, long double __y)
  { return __builtin_fminl(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    fmin(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return fmin(__type(__x), __type(__y));
    }
  constexpr float
  hypot(float __x, float __y)
  { return __builtin_hypotf(__x, __y); }
{
  constexpr long double
  hypot(long double __x, long double __y)
  { return __builtin_hypotl(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    hypot(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return hypot(__type(__x), __type(__y));
    }
  constexpr int
  ilogb(float __x)
  { return __builtin_ilogbf(__x); }
{
  constexpr int
  ilogb(long double __x)
  { return __builtin_ilogbl(__x); }
{
  template<typename _Tp>
    constexpr
    typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                    int>::__type
    ilogb(_Tp __x)
    { return __builtin_ilogb(__x); }
{
  constexpr float
  lgamma(float __x)
  { return __builtin_lgammaf(__x); }
{
  constexpr long double
  lgamma(long double __x)
  { return __builtin_lgammal(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    lgamma(_Tp __x)
    { return __builtin_lgamma(__x); }
{
  constexpr long long
  llrint(float __x)
  { return __builtin_llrintf(__x); }
{
  constexpr long long
  llrint(long double __x)
  { return __builtin_llrintl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long long>::__type
    llrint(_Tp __x)
    { return __builtin_llrint(__x); }
{
  constexpr long long
  llround(float __x)
  { return __builtin_llroundf(__x); }
{
  constexpr long long
  llround(long double __x)
  { return __builtin_llroundl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long long>::__type
    llround(_Tp __x)
    { return __builtin_llround(__x); }
{
  constexpr float
  log1p(float __x)
  { return __builtin_log1pf(__x); }
{
  constexpr long double
  log1p(long double __x)
  { return __builtin_log1pl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    log1p(_Tp __x)
    { return __builtin_log1p(__x); }
{
  constexpr float
  log2(float __x)
  { return __builtin_log2f(__x); }
{
  constexpr long double
  log2(long double __x)
  { return __builtin_log2l(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    log2(_Tp __x)
    { return __builtin_log2(__x); }
{
  constexpr float
  logb(float __x)
  { return __builtin_logbf(__x); }
{
  constexpr long double
  logb(long double __x)
  { return __builtin_logbl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    logb(_Tp __x)
    { return __builtin_logb(__x); }
{
  constexpr long
  lrint(float __x)
  { return __builtin_lrintf(__x); }
{
  constexpr long
  lrint(long double __x)
  { return __builtin_lrintl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long>::__type
    lrint(_Tp __x)
    { return __builtin_lrint(__x); }
{
  constexpr long
  lround(float __x)
  { return __builtin_lroundf(__x); }
{
  constexpr long
  lround(long double __x)
  { return __builtin_lroundl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              long>::__type
    lround(_Tp __x)
    { return __builtin_lround(__x); }
{
  constexpr float
  nearbyint(float __x)
  { return __builtin_nearbyintf(__x); }
{
  constexpr long double
  nearbyint(long double __x)
  { return __builtin_nearbyintl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    nearbyint(_Tp __x)
    { return __builtin_nearbyint(__x); }
{
  constexpr float
  nextafter(float __x, float __y)
  { return __builtin_nextafterf(__x, __y); }
{
  constexpr long double
  nextafter(long double __x, long double __y)
  { return __builtin_nextafterl(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    nextafter(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return nextafter(__type(__x), __type(__y));
    }
  constexpr float
  nexttoward(float __x, long double __y)
  { return __builtin_nexttowardf(__x, __y); }
{
  constexpr long double
  nexttoward(long double __x, long double __y)
  { return __builtin_nexttowardl(__x, __y); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    nexttoward(_Tp __x, long double __y)
    { return __builtin_nexttoward(__x, __y); }
{
  constexpr float
  remainder(float __x, float __y)
  { return __builtin_remainderf(__x, __y); }
{
  constexpr long double
  remainder(long double __x, long double __y)
  { return __builtin_remainderl(__x, __y); }
{
  template<typename _Tp, typename _Up>
    constexpr typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    remainder(_Tp __x, _Up __y)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return remainder(__type(__x), __type(__y));
    }
  inline float
  remquo(float __x, float __y, int* __pquo)
  { return __builtin_remquof(__x, __y, __pquo); }
{
  inline long double
  remquo(long double __x, long double __y, int* __pquo)
  { return __builtin_remquol(__x, __y, __pquo); }
{
  template<typename _Tp, typename _Up>
    inline typename __gnu_cxx::__promote_2<_Tp, _Up>::__type
    remquo(_Tp __x, _Up __y, int* __pquo)
    
{
      typedef typename __gnu_cxx::__promote_2<_Tp, _Up>::__type __type;
      return remquo(__type(__x), __type(__y), __pquo);
    }
  constexpr float
  rint(float __x)
  { return __builtin_rintf(__x); }
{
  constexpr long double
  rint(long double __x)
  { return __builtin_rintl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    rint(_Tp __x)
    { return __builtin_rint(__x); }
{
  constexpr float
  round(float __x)
  { return __builtin_roundf(__x); }
{
  constexpr long double
  round(long double __x)
  { return __builtin_roundl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    round(_Tp __x)
    { return __builtin_round(__x); }
{
  constexpr float
  scalbln(float __x, long __ex)
  { return __builtin_scalblnf(__x, __ex); }
{
  constexpr long double
  scalbln(long double __x, long __ex)
  { return __builtin_scalblnl(__x, __ex); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    scalbln(_Tp __x, long __ex)
    { return __builtin_scalbln(__x, __ex); }
{
  constexpr float
  scalbn(float __x, int __ex)
  { return __builtin_scalbnf(__x, __ex); }
{
  constexpr long double
  scalbn(long double __x, int __ex)
  { return __builtin_scalbnl(__x, __ex); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    scalbn(_Tp __x, int __ex)
    { return __builtin_scalbn(__x, __ex); }
{
  constexpr float
  tgamma(float __x)
  { return __builtin_tgammaf(__x); }
{
  constexpr long double
  tgamma(long double __x)
  { return __builtin_tgammal(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    tgamma(_Tp __x)
    { return __builtin_tgamma(__x); }
{
  constexpr float
  trunc(float __x)
  { return __builtin_truncf(__x); }
{
  constexpr long double
  trunc(long double __x)
  { return __builtin_truncl(__x); }
{
  template<typename _Tp>
    constexpr typename __gnu_cxx::__enable_if<__is_integer<_Tp>::__value,
                                              double>::__type
    trunc(_Tp __x)
    { return __builtin_trunc(__x); }
{
}
}
using std::abs;
using std::acos;
using std::asin;
using std::atan;
using std::atan2;
using std::cos;
using std::sin;
using std::tan;
using std::cosh;
using std::sinh;
using std::tanh;
using std::exp;
using std::frexp;
using std::ldexp;
using std::log;
using std::log10;
using std::modf;
using std::pow;
using std::sqrt;
using std::ceil;
using std::fabs;
using std::floor;
using std::fmod;
using std::fpclassify;
using std::isfinite;
using std::isinf;
using std::isnan;
using std::isnormal;
using std::signbit;
using std::isgreater;
using std::isgreaterequal;
using std::isless;
using std::islessequal;
using std::islessgreater;
using std::isunordered;
using std::acosh;
using std::asinh;
using std::atanh;
using std::cbrt;
using std::copysign;
using std::erf;
using std::erfc;
using std::exp2;
using std::expm1;
using std::fdim;
using std::fma;
using std::fmax;
using std::fmin;
using std::hypot;
using std::ilogb;
using std::lgamma;
using std::llrint;
using std::llround;
using std::log1p;
using std::log2;
using std::logb;
using std::lrint;
using std::lround;
using std::nearbyint;
using std::nextafter;
using std::nexttoward;
using std::remainder;
using std::remquo;
using std::rint;
using std::round;
using std::scalbln;
using std::scalbn;
using std::tgamma;
using std::trunc;
namespace CWE190_Integer_Overflow__int_listen_socket_square_84
{
CWE190_Integer_Overflow__int_listen_socket_square_84_goodB2G::CWE190_Integer_Overflow__int_listen_socket_square_84_goodB2G(int dataCopy)
{
    data = dataCopy;
    
{
        int recvResult;
        struct sockaddr_in service;
        int listenSocket = -1;
        int acceptSocket = -1;
        char inputBuffer[(3 * sizeof(data) + 2)];
        do
        
{
            listenSocket = socket(2, SOCK_STREAM, IPPROTO_TCP);
            if (listenSocket == -1)
            
{
                break;
            }
            memset(&service, 0, sizeof(service));
            service.sin_family = 2;
            service.sin_addr.s_addr = ((in_addr_t) 0x00000000);
            service.sin_port = htons(27015);
            if (bind(listenSocket, (struct sockaddr*)&service, sizeof(service)) == -1)
            
{
                break;
            }
            if (listen(listenSocket, 5) == -1)
            
{
                break;
            }
            acceptSocket = accept(listenSocket, __null, __null);
            if (acceptSocket == -1)
            
{
                break;
            }
            recvResult = recv(acceptSocket, inputBuffer, (3 * sizeof(data) + 2) - 1, 0);
            if (recvResult == -1 || recvResult == 0)
            
{
                break;
            }
            inputBuffer[recvResult] = '\0';
            data = atoi(inputBuffer);
        }
        while (0);
        if (listenSocket != -1)
        
{
            close(listenSocket);
        }
        if (acceptSocket != -1)
        
{
            close(acceptSocket);
        }
    }
}
CWE190_Integer_Overflow__int_listen_socket_square_84_goodB2G::~CWE190_Integer_Overflow__int_listen_socket_square_84_goodB2G()
{
    if (abs((long)data) <= (long)sqrt((double)2147483647))
    
{
        int result = data * data;
        printIntLine(result);
    }
    else
    
{
        printLine("data value is too large to perform arithmetic safely.");
    }
}
}