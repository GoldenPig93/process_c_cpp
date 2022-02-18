int main(int argc, char *argv[])
{
  int init_value;
  int loop_counter;
  char buf[10];
  init_value = 0;
  for(loop_counter = init_value; ; loop_counter++)
  
{
    if (loop_counter > 9) break;
    buf[9] = 'A';
  }
  return 0;
}