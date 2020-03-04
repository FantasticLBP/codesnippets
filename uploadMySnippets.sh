COLOR_ERR="\033[1;31m"    #出错提示
COLOR_SUCC="\033[0;32m"  #成功提示
COLOR_QS="\033[1;37m"  #问题颜色
COLOR_AW="\033[0;37m"  #答案提示
COLOR_END="\033[1;34m"     #颜色结束符

# 根据给出的路径逐层创建文件夹
function makeDir {
    mkdir -p $1
}

# 强制删除文件夹
function deleteTheFolderAbsolutely {
    rm -fr $1 
}

# 打印操作
function printStep {
  echo $COLOR_SUCC"### 执行操作【$1】###"$COLOR_END
}

:<<*
将本地的Xcode代码模版和自定义的几个类文件模版同步到云端
*
function uploadLocalCodeSnippetsAndFileTemplates {
    # 文件夹授权
    chmod 775 ~/Library/Developer/Xcode/UserData/CodeSnippets/
    chmod 775 /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/
    # 新建临时文件夹
    makeDir snippets
    makeDir filetemplete
    # 将系统目录下的代码块和自定义类文件模版拷贝到新建的文件夹中
    cp -rf ~/Library/Developer/Xcode/UserData/CodeSnippets/* ./snippets/
    cp -rf /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/Custom ./filetemplete/
    # 本地强制提交云端
    git add .
    printStep "git add ."
    echo $COLOR_QS"请输入commit log"$COLOR_END
    read commitLog

    # commit log 提交
    printStep "git commit -m ${commitLog}"
    git commit -m "${commitLog}"
    
    # 远端强制提交
    printStep "git push -f origin master"
    git push origin master
}

uploadLocalCodeSnippetsAndFileTemplates