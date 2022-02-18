# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/001/038/basic-00231-ok.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 341 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/001/038/basic-00231-ok.c" 2
# 50 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/001/038/basic-00231-ok.c"
int main(int argc, char *argv[])
{
  int inc_value;
  int loop_counter;
  char buf[10];

  inc_value = 9 - (9 - 1);

  loop_counter = 0;
  do
  {

    buf[loop_counter] = 'A';
    loop_counter += inc_value;
    if (loop_counter > 9) break;
  }
  while(1);


  return 0;
}
