int main(int argc, char *argv[])
{
  int init_value;
  int test_value;
  int loop_counter;
  char buf[10];
  init_value = 0;
  test_value = 17;
  loop_counter = init_value;
  do
  
{
    buf[loop_counter] = 'A';
    if (loop_counter >= test_value) break;
  }
  while(++loop_counter);
  return 0;
}