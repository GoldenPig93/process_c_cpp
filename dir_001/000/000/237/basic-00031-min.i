# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/237/basic-00031-min.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 341 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/237/basic-00031-min.c" 2
# 50 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/237/basic-00031-min.c"
typedef struct
{
  int int_field;
  char buf[10];
} my_struct;

int main(int argc, char *argv[])
{
  my_struct array_buf[5];



  array_buf[4].buf[10] = 'A';


  return 0;
}
