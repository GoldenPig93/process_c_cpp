# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/792/basic-00170-med.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 341 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/792/basic-00170-med.c" 2
# 50 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/792/basic-00170-med.c"
int main(int argc, char *argv[])
{
  int init_value;
  int test_value;
  int inc_value;
  int loop_counter;
  char buf[10];

  init_value = 0;
  test_value = 17;
  inc_value = 17 - (17 - 1);

  loop_counter = init_value;
  for( ; ; )
  {
    if (loop_counter > test_value) break;

    buf[17] = 'A';
    loop_counter += inc_value;
  }


  return 0;
}
