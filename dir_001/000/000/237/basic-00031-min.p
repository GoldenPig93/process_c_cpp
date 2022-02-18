typedef struct
{
  int int_field;
  char buf[10];
} my_struct;
int main(int argc, char *argv[])
{
  my_struct array_buf[5];
  array_buf[4].buf[10] = 'A';
  return 0;
}