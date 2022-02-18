# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/751/basic-00160-large.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 341 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/751/basic-00160-large.c" 2
# 50 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/751/basic-00160-large.c"
int main(int argc, char *argv[])
{
  int test_value;
  int inc_value;
  int loop_counter;
  char buf[10];

  test_value = 4105;
  inc_value = 4105 - (4105 - 1);

  loop_counter = 0;
  do
  {

    buf[4105] = 'A';
    if (loop_counter >= test_value) break;
  }
  while(loop_counter += inc_value);


  return 0;
}
