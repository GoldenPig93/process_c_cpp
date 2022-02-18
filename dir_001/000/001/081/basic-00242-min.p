int main(int argc, char *argv[])
{
  int init_value;
  int test_value;
  int loop_counter;
  char buf[10];
  init_value = 0;
  test_value = 10;
  loop_counter = init_value;
  for( ; ; )
  
{
    if (loop_counter > test_value) break;
    buf[loop_counter] = 'A';
    loop_counter++;
  }
  return 0;
}