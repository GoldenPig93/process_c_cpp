void CWE122_Heap_Based_Buffer_Overflow__CWE131_loop_09_bad()
{
    int * data;
    data = ((void*)0);
    if(GLOBAL_CONST_TRUE)
    
{
        data = (int *)malloc(10);
    }
    
{
        int source[10] = {0};
{
        size_t i;
        for (i = 0; i < 10; i++)
        
{
            data[i] = source[i];
        }
        printIntLine(data[0]);
        free(data);
    }
}
static void goodG2B1()
{
    int * data;
    data = ((void*)0);
    if(GLOBAL_CONST_FALSE)
    
{
        printLine("Benign, fixed string");
    }
    else
    
{
        data = (int *)malloc(10*sizeof(int));
    }
    
{
        int source[10] = {0};
{
        size_t i;
        for (i = 0; i < 10; i++)
        
{
            data[i] = source[i];
        }
        printIntLine(data[0]);
        free(data);
    }
}
static void goodG2B2()
{
    int * data;
    data = ((void*)0);
    if(GLOBAL_CONST_TRUE)
    
{
        data = (int *)malloc(10*sizeof(int));
    }
    
{
        int source[10] = {0};
{
        size_t i;
        for (i = 0; i < 10; i++)
        
{
            data[i] = source[i];
        }
        printIntLine(data[0]);
        free(data);
    }
}
void CWE122_Heap_Based_Buffer_Overflow__CWE131_loop_09_good()
{
    goodG2B1();
    goodG2B2();
}