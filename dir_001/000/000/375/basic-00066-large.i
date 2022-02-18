# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/375/basic-00066-large.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 341 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/375/basic-00066-large.c" 2
# 50 "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/000/375/basic-00066-large.c"
int main(int argc, char *argv[])
{
  char buf[10];

  if (sizeof buf > 4105 + 1)
  {
    return 0;
  }


  buf[4105] = 'A';


  return 0;
}
