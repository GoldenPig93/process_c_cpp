# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/001/246/basic-00283-ok.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 341 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/001/246/basic-00283-ok.c" 2
# 50 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/001/246/basic-00283-ok.c"
int main(int argc, char *argv[])
{
  int init_value;
  int test_value;
  int inc_value;
  int loop_counter;
  char buf[10];

  init_value = 0;
  test_value = 9;
  inc_value = 9 - (9 - 1);

  loop_counter = init_value;
  do
  {

    buf[loop_counter] = 'A';
    loop_counter += inc_value;
    if (loop_counter > test_value) break;
  }
  while(1);


  return 0;
}
