int main(int argc, char *argv[])
{
  int test_value;
  int loop_counter;
  char buf[10];
  test_value = 17;
  loop_counter = 0;
  do
  
{
    buf[17] = 'A';
    if (loop_counter >= test_value) break;
  }
  while(++loop_counter);
  return 0;
}