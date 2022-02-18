# -*- coding: utf-8 -*-

## 基础版本的 parser
from os import write
import re



# 疑问? 我要不要也 处理掉 每行 开头前面的 缩进字符?? 
# 疑问? 我对于 里面的 花括号要如何处理? 


def list2file(filename,contents):
    f = open(filename, "w")
    end = '\n'
    f.write(end.join(contents))
    f.close()
# base_remover()

def base_remover(filename, filename_out): 

    comment_pattern = r'#.*' 
    regular = re.compile(comment_pattern)

    f = open(filename, 'r', encoding='utf-8')
    sentences = f.readlines()
    new_sentences = []

    for sentence in sentences:
        comment_sentence = regular.findall(sentence)
        print(" find # comment or :")
        print(comment_sentence)
        new_sentence = re.sub(comment_pattern, "", sentence)
        print('new sentence is '+new_sentence)
        new_sentence = new_sentence.strip('\n')
        if new_sentence == '':
            continue
        elif new_sentence.find(r'{') != -1:
            new_sentences.append(new_sentence.strip(r'{'))
            new_sentences.append('{') 
        else:
            print('normal sentence')
            new_sentences.append(new_sentence)
            
    new_sentences = list(filter(None,new_sentences))
    
    list2file(filename_out,new_sentences)
    print('write to file ['+ filename_out + '] finish!')

if __name__ == "__main__" :
    inputfile = 'c/784/CWE122_Heap_Based_Buffer_Overflow__CWE131_loop_09.i'
    base_remover(inputfile, inputfile+'.p')
