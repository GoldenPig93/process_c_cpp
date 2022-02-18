# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/730/basic-00154-ok.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 341 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/730/basic-00154-ok.c" 2
# 50 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/730/basic-00154-ok.c"
int main(int argc, char *argv[])
{
  int test_value;
  int inc_value;
  int loop_counter;
  char buf[10];

  test_value = 9;
  inc_value = 9 - (9 - 1);

  loop_counter = 0;
  for( ; loop_counter <= test_value; loop_counter += inc_value)
  {

    buf[9] = 'A';
  }


  return 0;
}
