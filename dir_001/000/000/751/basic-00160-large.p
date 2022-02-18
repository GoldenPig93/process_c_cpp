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