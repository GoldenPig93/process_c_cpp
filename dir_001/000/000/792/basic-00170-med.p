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