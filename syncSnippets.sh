# 强制删除传递的参数文件夹，然后逐层创建文件夹
function mkDirAbsolutely {
    rm -rf $1
    mkdir -p $1
}

# 从云端下载代码块
function downloadCodesnippetsFromGit {
    git clone $1
}

# 先给 Xcode 的代码块的文件夹设置权限；
# 777 和 775 分别代表三种用户身份的文件权限。（文件所有者、文件所属组、其他用户）7=4+2+1 可读可写可执行；6=4+2可读可写；5=1+4；可读可执行
function moveCodeSnippetsToXcodeSnippetsFolder {
    chmod 775 ~/Library/Developer/Xcode/UserData/CodeSnippets/
    mv -f ./snippets/* ~/Library/Developer/Xcode/UserData/CodeSnippets/
}

# 先给 Xcode 的 File templates 文件夹设置权限
# 再将从云端下载下来的文件模版文件夹写入移动到 Xcode 下的 File Templates 文件夹下
function moveFileTemplatesToXcodeFileTemplatesFolder {
    # 记录当前绝对路径
    basepath=$(cd `dirname $0`; pwd)
    # 进入Xcode系统类文件模版路径
    cd 
    cd /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/

    # 系统文件夹授权
    sudo chmod 777 /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/
    mkDirAbsolutely Custom
    cd Custom
    
    # 再切换到当前脚本所在的文件夹下
    cd $basepath

    # 将从云端下载下来的代码模版移动到Xcode系统的模版文件夹下
    mv -f ./filetemplete/Custom/* /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/File\ Templates/Custom/
}

# 强制删除文件夹
function deleteTheFolderAbsolutely {
    rm -fr $1 
}

:<<EOF
从云端同步 codesnippets 到 Xcode 的 codesnippets 文件夹
从云端同步 File Templates 到 Xcode 的 File Templates 文件夹
EOF

function syncXcodesnippetsAndFileTemplatesFromOnlinestorage {
    #1
    mkDirAbsolutely CodeSinppetsAndFileTemplates
    #2
    cd CodeSinppetsAndFileTemplates
    #3
    downloadCodesnippetsFromGit git@github.com:FantasticLBP/codesnippets.git
    #4
    cd codesnippets
    #5
    mkDirAbsolutely ~/Library/Developer/Xcode/UserData/CodeSnippets/
    #6
    moveCodeSnippetsToXcodeSnippetsFolder
    #7
    moveFileTemplatesToXcodeFileTemplatesFolder
    #8
    cd ..
    #9
    cd ..
    #10
    deleteTheFolderAbsolutely CodeSinppetsAndFileTemplates
}

syncXcodesnippetsAndFileTemplatesFromOnlinestorage