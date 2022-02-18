int main(int argc, char *argv[])
{
  int inc_value;
  int loop_counter;
  char buf[10];
  inc_value = 9 - (9 - 1);
  loop_counter = 0;
  do
  
{
    buf[loop_counter] = 'A';
    loop_counter += inc_value;
    if (loop_counter > 9) break;
  }
  while(1);
  return 0;
}