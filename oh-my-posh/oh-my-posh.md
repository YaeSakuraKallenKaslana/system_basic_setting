# Oh-My-Posh配置

```shell

#------------------------------- Import Modules BEGIN -------------------------------
# 引入 posh-git
Import-Module posh-git
# 引入 oh-my-posh half-life   pure honukai emodipt   illusi0n zash
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\zash.omp.json" | Invoke-Expression
# 引入 ps-read-line
Import-Module PSReadLine
Import-Module -Name Terminal-Icons
```

- 1. windonw下在终端界面执行

     ```powershell
      winget install JanDeDobbeleer.OhMyPosh -s winget
     ```

- 2. 下载完成之后执行

     ```powershell
     code $PROFILE
     ```

- 3. 将最上面的文件复制到第二步打开的文件中保存即可
