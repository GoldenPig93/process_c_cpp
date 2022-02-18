# -*- coding: utf-8 -*-

import os
import glob
import preprocessor
import pickle

# 要扫描的文件夹目录
# test directory
# PATH = "c"

# SARD directory
#PATH = "/home/kevin/Desktop/AI-Vulnerability/test/version3/dir_001/000/068"

PATH = "/home/kevin/Desktop/AI-Vulnerability/test/version3/c"

CTYPE = '.c'
CPPTYPE = '.cpp'
ITYPE = '.i'
PTYPE = '.p'
DSFILE = '.DS_Store'
HTYPE = '.h'


def preprocess(filename, root):
    if filename.endswith(CTYPE) or filename.endswith(CPPTYPE):
        print("[Info] find a .c or .cpp file, llvm process! ")
        filename_o = filename.rsplit("/")[-1].replace("."+filename.rsplit(".")[-1], ITYPE)
        iFilePath = os.path.join(root, filename_o)
        f_command = "clang -fmodules -E " + os.path.join(root, filename) + " -o " + iFilePath
        print("[TEST] command is: "+f_command)
        os.system(f_command)
        print('[INFO] clang preprocess finish!')
    elif (filename.endswith(ITYPE)):
        print("[Info] find a .i file, abstract! ")
    else:
        print("[Info] not a .c file, pass! ")

# 方法 2: 利用 os.walk 遍历文件
    # root 表示当前正在访问的文件夹路径
    # dirs 表示该文件夹下的子目录名list
    # files 表示该文件夹下的文件list
def preprocess_main(path):
    print("start preprocess"+path)
    sFiles = []
    hFiles = []
    for root, dirs, files in os.walk(path):
        for f in files:
            filepath = os.path.join(root, f)
            if f.endswith(HTYPE):
                print("[INFO] Header files " + filepath + " collect")
                hFiles.append(filepath)
                continue
            elif (not (f.endswith(CTYPE) or f.endswith(CPPTYPE))):
                print("[INFO] detect other files, igore")
                continue
            # 调用 实际 clang 命令
            preprocess(f,root)
            # 添加 c or c++ 文件路径
            sFiles.append(filepath)
            print("[INFO] C/C++ files " + filepath + " collect")
            print("[TEST] File list is: ")
            print(sFiles)
    return sFiles,hFiles

def abstract_code(path):
    for root, dirs, files in os.walk(path):
        for f in files:
            if(f.endswith(ITYPE)):
                print("[TEST] detect .i file, process")
                filename_o = f.rsplit('/')[-1].replace(ITYPE, PTYPE)
                iFilePath = os.path.join(root, f)
                pFilePath = os.path.join(root, filename_o)
                print("[INFO] baseremover "+ pFilePath)
                preprocessor.base_remover(iFilePath,pFilePath)
                print("[TEST] abstract file " + filename_o + " finish!")
        print("[TEST] abstract directory " + root + " finish!")
    print("[TEST] abstract " + "all project" + " finish!")    

def main():
    # step 0 初始化变量
    # 存储 c/c++ 文件路径
    sFiles = []
    # 存储 .h 文件路径
    hFiles = []
    
    # step 1 对于 目录中的 每一个 c 文件 我们执行 clang 分析, 抽取 c 文件路径, 抽取 .h 文件路径
    print("[INFO] analyzing target path: "+ PATH)
    print("[INFO] Starting scan files in directory ["+PATH+"]")
    # step1 clang preprocess phase
    sFiles, hFiles = preprocess_main(PATH)
    print("[INFO] Preprocess finish, file path list 'sFiles' 'hfiles'created, '.i' file created... ")
    #print(sFiles)
    sfilename = os.path.join(PATH, "source_coll.pkl")
    with open(sfilename, 'wb') as fc:
        pickle.dump(sFiles, fc)
        fc.close()
    print("[INFO] Dump c/c++ path list to " + sfilename)
    hfilename = os.path.join(PATH, "header_coll.pkl")
    with open(hfilename, 'wb') as fh:
        pickle.dump(hFiles, fh)
        fh.close()
    print("[INFO] Dump h path list to " + hfilename)
    # step2 abstract pre files 抽取 每个 原文件中  实际使用的 函数代码.
    abstract_code(PATH)
    print("[INFO] Abstracting finish, '.p' file created... ")
    
    print("[INFO] project finish!")

if __name__ == "__main__":
    main()


    
    # scan_file 返回的是 当下目录中 所有的 .c 文件(包含地址)的 列表
    # 既然如此我 为什么不进行 walk
    # 方法 1: 一个一个找文件
    # for cfile in scan_files(PATH, CTYPE):
    #     print('start preprocess ' + cfile + ' with clang')


# 将文件名列表 里的 每一个元素都 添加上指定 目录 从 test.c -> /home/test/test.c 这种
# def addPath(fList, fpath):
#     map_rule_01 = lambda x: os.path.join(fpath,x)
#     nFPath = list(map(map_rule_01,fList))
#     print("print new file path")
#     print(nFPath)
#     return nFPath

# 得到目录下 所有文件的名称, type = '.c', '.i' ....
# def scan_files(fpath, type):
#     rfiles = []
#     print("scan directory: "+fpath)
#     print(fpath)
    
#     # 得到不含路径的 文件名列表
#     files = os.listdir(fpath)
#     # 过滤掉 DS_Store 文件
#     files = list(filter(lambda x: str.find(x,'.DS_Store'),files))
#     print("DS_Store filted files are")
#     print(files)
#     print("after map filepath are: ")
    
#     # [不含路径的文件名 列表] -> [含有路径的文件名 列表]
#     fpList = addPath(files,fpath)
#     print("fpprint list")
#     print(fpList)

#     # 这个 fplist 里的元素 可能是个 文件夹也可能是个 文件 
#     for file in files: 
#         # 判断是否是文件夹? 是文件夹 -> 递归调用
#         if os.path.isdir(file):
#             print(file + " is a directory")
#             rfiles = rfiles+scan_files(file, type)
            
#         # 判断是否是文件夹? 是文件 -> 处理它 
#         elif os.path.isfile(file):
#             print(file+" is a file")
#             if file.endswith(type):
#                 directorypath = fpath+file
#                 rfiles.append(filepath)
#         else:
#             print("not a directory or a file")
#     return rfiles