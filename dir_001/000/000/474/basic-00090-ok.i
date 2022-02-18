# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/474/basic-00090-ok.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 341 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/474/basic-00090-ok.c" 2
# 50 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/474/basic-00090-ok.c"
int main(int argc, char *argv[])
{
  int init_value;
  int loop_counter;
  char buf[10];

  init_value = 0;

  for(loop_counter = init_value; ; loop_counter++)
  {
    if (loop_counter > 9) break;

    buf[9] = 'A';
  }


  return 0;
}
