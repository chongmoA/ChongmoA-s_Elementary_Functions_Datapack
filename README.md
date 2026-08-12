这是一个基于Minecraft指令的基本初等函数库
轻量化，低学习成本，快速

你好，欢迎使用我的数学库
这是我的邮箱，如果有什么问题，请反馈给我
email:wwwwxxzgaf9719803@163.com

好了，那开始了解如何使用这个库吧

[ 1 ]:关于库支持的版本

性能版:国际Java版 1.20.3--26.2
兼容版:国际Java版 预计在2026年底前发布

[ 2 ]:安装这个库

关于这个问题，最好的教程是Wiki上的，这里就不再赘述
wiki数据包安装教程:https://zh.minecraft.wiki/w/Tutorial:%E5%AE%89%E8%A3%85%E6%95%B0%E6%8D%AE%E5%8C%85

还有，数学库并不需要每一次开始游戏，都重新加载一次，就没有写load.mcfunction
需要玩家手动加载运行这个函数，这个函数是恢复出厂设置
/function elementary_function:all_load

[ 3 ]:内置api

输入这条指令，将计分板显示设置为库的计分板
/scoreboard objectives setdisplay sidebar elementary_function

在函数计分板下有input，result和param三个参数
对于一元函数，只要用到input和result
而对于二元函数，还用用到param
这个数学库，只内置了两个二元函数log_a和pow

三个参数的设置指令如下
/scoreboard players set input elementary_function
/scoreboard players set result elementary_function
/scoreboard players set param elementary_function

[ 4 ]:缩放因子

这是使用这个函数库最重要的概念

为了在minecraft之中表示小数，就需要对小数进行放大为整数
放大多少倍就是缩放因子
小数的真实值=(放大后的数)/(对应的缩放因子)

例子
sin函数的输入input缩放因子为1000

如果input的输入值为500
那么在sin函数看来，输入input的真实值就是500/1000
表示0.5

如果input的输入值为114514
那么在sin函数看来，输入input的真实值就是114514/1000
表示114.514

[ 5 ]:函数介绍

本数学库目前支持sin，cos，tan，arcsin，arccos，arctan，ln(x)，e^(x)，log_a(x)和a^(x)
最终的结果值会储存到result参数
如果对input定义域没有定义，那就是input∈[-2147483647,2147483647]
对于有定义域的函数,如果输入的input不在定义域之内，返回result值均为0
对于三角函数，均使用弧度制，一个pi取3140，缩放因子1000
周期 6280/3140 为近似值（真实 6283.19/3141.59）。input 越大误差累积越大
建议 |input| 保持在较小范围（如 2 万以内），否则结果失真。

[ 5 ]{ 1 }:sin

函数调用:/function elementary_function:sin

输入input缩放因子1000
输出result缩放因子10000
result = sin( input )

函数周期6280

[ 5 ]{ 2 }:cos

函数调用:/function elementary_function:cos

输入input缩放因子1000
输出result缩放因子10000
result = cos( input )

函数周期6280

[ 5 ]{ 3 }:tan

函数调用:/function elementary_function:tan

输入input缩放因子1000
输出result缩放因子10000
result = tan( input )

函数周期3140
对任意整数周期 period，满足 {period｜period∈N，period <= 683911}
若输入值满足 input = 1570 + 3140*period，函数输出恒为 result = 2147483647
若输入值满足 input = -1570 - 3140*period，函数输出恒为 result = -2147483647

[ 5 ]{ 4 }:arcsin

函数调用:/function elementary_function:arcsin

输入input缩放因子1000
输出result缩放因子10000
result = arcsin( input )

input∈[-1000,1000]

[ 5 ]{ 5 }:arccos

函数调用:/function elementary_function:arccos

输入input缩放因子1000
输出result缩放因子10000
result = arccos( input )

input∈[-1000,1000]

[ 5 ]{ 6 }:arctan

函数调用:/function elementary_function:arctan

输入input缩放因子1000
输出result缩放因子10000
result = arctan( input )

[ 5 ]{ 7 }:lnx

函数调用:/function elementary_function:lnx

输入input缩放因子1000
输出result缩放因子10000
result = ln( input )

input∈(0,2147483647]

[ 5 ]{ 8 }:e^x

函数调用:/function elementary_function:ex

输入input缩放因子1000
输出result缩放因子10000
result = e^(input)

input∈[-9208,12277]
对于input<-9208，均返回0，由于数值的太小
对于input>12277，均返回0，由于数值的太大，计分板储存不了

[ 5 ]{ 9 }:log_a(x)

函数调用:/function elementary_function:log_a

真数input缩放因子1000
底数param缩放因子1000
输出result缩放因子10000
result = log_param(input)

input∈(0,2147483647]
param∈(0,1000)∪(1000,2147483647]

[ 5 ]{ 10 }:pow(a , x)

函数调用:/function elementary_function:pow

指数param缩放因子10
底数input缩放因子1000
输出result缩放因子10000
result = input^(param)

input∈(0,2147483647]
param∈[-2147483647,2147483647]
建议，必看!!!
| 指数 param（存储值） | 底数 input 允许范围 | 真实式子示例 |
|---|---|---|
| 10（指数 1） | 1 ~ 约 2.1 亿 | 3¹ |
| 100（指数 10） | 398 ~ 3413 | 2¹⁰ = 1024 |
| 1000（指数 100） | 912 ~ 1130 | 1.05¹⁰⁰ |
| 10000（指数 1000） | 991 ~ 1012 | 1.001¹⁰⁰⁰ |

两条记忆口诀：

1. 底数 input 越接近 1000（真实值 1），越安全
2. 指数想填大，底数就必须贴近 1000

超范围会怎样？result = 0（结果太大或太小，计分板装不下）。

(选看)(选看)(选看)
特别说明,计算式子会转化为这样
input^param = e^(param*ln(input))
而这个函数极其容易溢出,请确保对于这一部分满足(param*ln(input))
(param*ln(input))∈[-9208,12277] 缩放因子1000
当然，对于小一点的数，完全不需要担心,它只影响较大的数
(选看)(选看)(选看)

[ 6 ]:一元二元函数示例

在开始之前请确保安装好了数学库
并执行了/function elementary_function:all_load
为了显示出更好地显示结果，请输入这条指令，计分板显示为数学库
/scoreboard objectives setdisplay sidebar elementary_function

[ 6 ]{ 1 }:sin函数示例

在这个数学库，对于pi的定义是3140，如果想要pi/2的sin值
那么先输入这条指令，将input设置为1570，即为pi/2

/scoreboard players set input elementary_function 1570

在输入这条指令，调用数学库的sin函数

/function elementary_function:sin

看到计分板显示result值为10000,缩放因子为10000
那它真是表示的值为10000/10000=1,与真实值1一样

[ 6 ]{ 2 }:指数函数示例

如果你想要5^(0.5)的值

将底数input设置为5000，缩放因子为1000

/scoreboard players set input elementary_function 5000

将指数param设置为5，缩放因子为10

/scoreboard players set param elementary_function 5

在输入这条指令，调用数学库的pow函数

/function elementary_function:pow

看到计分板显示result值为22348,缩放因子为10000
那它真是表示的值为22348/10000=2.2348,与真实值2.2360十分相近
