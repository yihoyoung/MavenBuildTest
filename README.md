# MavenBuildTest

# 执行 Jenkins checkstyle
在 jenkins 的 gols 中最后填写 checkstyle:check

checkstyle 的结果文件会添加到 target/checkstyle-result.xml

jenkins 的 checkstyle 选项上填写 target/checkstyle-result.xml

构建完成后任务的坐上目录上会出现一个 Checkstyle Warnings 项， 点击可以查看