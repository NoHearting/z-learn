<%--
  Created by zsj
  User: zsj
  Date: 2019/10/16
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>测试2</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/editermd/css/editormd.css" />
</head>

<body>

    <div id="test-editormd">
    　　<textarea style="display:none;" placeholder="markdown语言"># 说一些废话
*在C/C++语言中，指针可能是最重要的东西了，但是想要学会使用它并且少出错却不是很容易。这篇文章，写一下我自己对于这个东西的理解。当初开始学这个东西也是把我给弄得晕头转向，现在没那么晕了，就把我微不足道的经验给记录下来，也为以后的查阅提供依据。*
# 什么是指针
__*指针就是地址，地址就是指针*__
__*指针变量就是保存地址的变量*__
==通常我们将指针变量称为指针==，两者不一样。但是让我们迷惑和操作的其实是指针变量，下面就主要探究一下指针变量，下面直接称为==指针==。

在C/C++中有一个东西叫**变量**，它的样子和声明定义是这样的。
```C/C++
int i_value = 10；			//整形
double d_value = 12.5;  // 双精度浮点型
```
但是还有一类变量，它们是**指针变量**，它们的样子和声明定义是这样的。
```C/C++
double d_value;   //double类型变量
int * pi_value;			//整形指针变量
double * pd_value;   // 双精度浮点型指针变量
double * pd_value2 = &d_value；    //指针变量赋值
double * pd_value3 = (double *)malloc(sizeof(double));   //pd_value3指向malloc返回的内存
double * pd_value4 = new double;  // pd_value4指向new返回的内存   C++方式
```
**指针变量和普通变量的不同点：**
1. 声明的方式不同。指针变量多一个 *号
2. 变量内容不同。指针变量保存的内容是地址（同类型变量的地址）
3. 赋值（给指针赋值这里称为指向）的方式不同。利用 **&** 给指针变量赋值或者直接申请内存
# 指针的大小
指针的一个优点在于无论指针的类型如何，它的大小都是一定的，这个大小只受运行机器的影响。计算指针的大小可以用sizeof运算符求得。
```C/C++
void * p_void = NULL:
int * p_int = NULL;
float * p_double = NULL;
cout<<sizeof(p_void)<<sizeof(p_int)<<sizeof(p_double);    // 32位机 4字节    64位机 8字节
```
指针在32位计算机上占4个字节的内存，才64位机上占8个字节。
# 指针的使用

### 基础变量时候的指针
```C/C++
//             test1
int value = 10;
int * p_value1;
int * p_value2 = &value;   //p_value指向value
```
如上我们定义了一个普通int类型变量和两个int * 类型指针变量p_value1和p_value2.上面我们将value的地址值赋值给p_value2.则p_value2保存的值就为value的地址，这里我称p_value2指向value（保存谁的地址就指向谁）。那我们怎么获取指针变量指向的值呢，如果直接输出p_value2只会得到value的地址，这里就要用到 ==*== 运算符（这里称解引运算符）。* 指针变量名（eg：* p_value2    就会得到value里面的值），这里会由地址找到唯一的存储单元，可以对此进行读写。
```C/C++
//         test1
cout<<*p_value2;   // 输出p_value2指向的变量的值     这里为  10
*p_value2 = 15；   // 赋值   由于p_value2，本次赋值会改变value的值
cout<<*p_value2;  // 输出： 15
cout<<value;   // 输出 ：15
value = 20；  // 赋值给value
cout<<*p_value2<<"  "<<value;   //输出 ： 20  20
// 改变*p_value2的值，value也改变了
```
为什么给解引的指针变量赋值会改变该指针变量指向的变量的值？这个问题其实很简单。首先要清楚地址值（存储单元的编号）在当前内存中只有一份。value变量相当于一个盒子，盒子可以放东西，也有地址，指针变量p_value2保存的就是这个盒子的地址，解引运算（*p_value2）就相当于直接操作盒子里的东西。这两种操作都是操作的同一个地址上的东西，所以改变一个也就改变了另一个。



### 函数传递参数时候的指针
*相信大家学的任何一门语言都会有交换两个值的的基本操作，有很多种方法完成这件事，这里就不说其他的，主要叙述指针的方式，但是我们得一步一步来*。
- 在主函数中的两数交换
```C/C++
int main(void)
{
	int left = 10;
	int right = 20;
	int temp = left;
	left = right;
	right = temp;
	cout<<left<<"   "<<right;  // 20 10   交换成功
}
```
相信这个大家也尝试过，但是这种解决办法却使得我们的代码不太美观，我们自定义一个函数来完成这件事。
- 在函数中完成两数交换
```C/C++
void swap(int t_left,int t_right)
{
	int temp = t_left;
	t_left = t_right;
	t_right = temp;
}
int main(void)
{
	int left = 10;
	int right = 20;
	swap(left,right);
	cout<<left<<"   "<<right;  // 10 20   交换失败
}
```
这里为什么交换不成功呢。原因在于
>*__C/C++里面的函数参数传递都是值传递__*

主函数中两个实参传递给swap两个形参，两个形参就是两个实参的副本，包含的值一模一样，这两个形参首先是一个局部变量，在函数结束的时候会被回收，其次这两个新参只有包含的值和主函数的实参值一样。这两个新参（局部变量）的地址不和主函数里面的两个实参地址相同，所以这里的交换只是交换两个在函数结束时就回收的变量的值，没有任何的意义。

- 把指针当做参数传递，进行两数交换

 ```C/C++
 void swap(int * p_left,int * p_right)
{
	int temp = *p_left;
	*p_left = *p_right;
	*p_right = temp;
}
int main(void)
{
	int left = 10;
	int right = 20;
	swap(&left,&right);   //传入变量的地址
	cout<<left<<"   "<<right;  // 20 10   交换成功
}
```
这里当主函数传递两个参数到函数里面，上面讲到会产生两个局部变量，只不过这里产生的是两个指针变量p_left和p_right，这两个指针变量里面的值就是主函数传递的两个变量的地址（指向）。然后利用*号，取得主函数变量里面的值，进行赋值变换操作，就可以更改主函数中的两个变量内部的值。

这里是否能凸显出指针的作用？应该还是可以吧，但是指针也有可能会出错，比如下面的几种不正确的用法，都会导致指针不能成功交换两个数的值。

- 错误的用法
```C/C++
void swap(int * p_left,int * p_right)
{
	int * temp = p_left;
	p_left = p_right;
	p_right = temp;
}
```
这个看着没什么问题，但是也不能成功的做出交换。上面说过，p_left和p_right是两个局部变量，保存有主函数传递进函数的两个形参的地址，这里没什么问题。然后，开始交换，这里就如普通的变量交换内容一样，所以交换后p_left保存的是p_right的内容，同理p_right。但是这并没有影响外部主函数传递的值，这只是两个局部变量无意义的交换内容罢了。这个swap函数结束的时候，p_left和p_right就不存在了。

- 传址函数的问题
```C/C++
void changeStr(char str[])
{
	str = "222222222222";
}
int main(void)
{
	char string[101];
	cin >> string;      // 输入   1111111111
	changeStr(string);
	cout<<string;   //输出   1111111111
}
```
这里并没有如我们所想的那样改变字符串的值。还是因为函数参数的传递是由于值传递。由上可知，changStr函数中str是一个局部变量，str保存的是主函数中string第一个字符的地址。str=“222222222222”导致str被改变指向，原本指向主函数中string第一个字符，然后被改变为指向“222222222222”中第一个字符的地址，实际上并未改变主函数的string的值。给出一个和解决办法：
```C/C++
void changeStr(char str[])
{
	strcpy(str, "2222222222");
}
int main(void)
{
	char string[101];
	cin >> string;      // 输入   1111111111
	changeStr(string);
	cout<<string;   //输出   2222222222
}
```
这里直接回更改str指向的首地址的值和后续的地址的值。
# 使用指针会遇到的问题
*指针概念和基础操作简单，但是想要用好它确不简单，因为它太容易出问题了，如果不好好的管理。这里我就简单的给出我遇到的指针的坑*

### 空指针
>指向0的指针就是空指针

```C/C++
int * p_value = NULL;
int * p_value2 = nullptr;   //C++
```
p_value和p_value2都是空指针。C/C++规定对空指针进行free或者delete不会出现问题。但对空指针进行操作可能会出现问题导致程序崩溃。可以在操作之前判断该指针是否为空。

### 野指针
>野指针指指向一个已删除的对象或未申请访问受限内存区域的指针

野指针无法通过判断是否为空来检查，只能通过良好的编程习惯来尽量减少，很多程序崩溃的原因就是操作了野指针。造成野指针的原因很多，比如：
1. 定义一个指针变量却不初始化
2. 释放一个指针指向的内存后指针不赋值为空指针或者重新赋值
```C/C++
int * p_value;    //野指针         ------ 1
int * p_value2 = new int;    //C++
delete p_value2;        //野指针   ---------- 2
int * p_value3 = (int*)malloc(sizeof(int));
free(p_value3);    //野指针
```
1处的野指针最容易出现，也最容易发现。在C/C++中，定义的变量如果未手动初始化，程序运行时，该变量会被赋予一个乱值，指针变量如果被赋予一个不知道的值，然后再对该地址的值进行访问就会出现程序崩溃。解决办法很简单，就是将它变为空指针。
2处的指针由于指向的内存被释放而没有指向一个有意义的值，如果再次访问这个指针变量，就可能会造成程序崩溃。解决办法也是让它变为空指针。

### 赋值和指向
```C/C++
int * p_value = NULL;
*p_value = 10;   //报错
```
这里的p_value并未指向任何变量，后面的赋值操作是将10赋值到指针指向的变量内存上去，但是这里指针并未指向一块内存，所以出错。解决办法就是在操作指针变量的时候确保该指针已经指向一个变量或者一块内存。
```C/C++
int value = 10;
int * p_value = &value;   //指向value    ------1
int * p_value2 = (int*)malloc(sizeof(int));   //指向一个int大小的内存空间  --------2
*p_value = 20；  // ok
*p_value2 = 30;   //ok
```
这里给指针变量赋值叫做指针的指向操作（1,2两步）。后两步都是对指针指向的值的操作。



# 二级指针
上面的全部讨论的都是一级指针，下面就简单说说二级指针。一般用得最多的也就是一级/二级指针。更高级的指针不讨论，不常用。二级指针和一级指针一样，都是存放地址，只不过，一级指针存放普通变量的地址，二级指针存放的是一级指针的地址。
### 基础变量时候的指针
```C/C++
int value = 10;
int * p_value = &value;
int ** pp_value = &p_value;
cout<<*p_value<<*(*pp_value);   //   10   10
```
看着很复杂其实也不复杂 ，首先pp_value里面保存的是指针变量p_value的值，解引操作*pp_value的值其实就是p_value，所以*pp_value的值就是value的地址，然后再进行一次解引操作就取出的是value的值。==明白一点，二级指针里面保存的是一级指针的地址==。


*二级指针还有许多的用处。后面的与指针有关的函数指针、指针和数组的关系、指针和结构体/对象的关系、C++中的智能指针留着下一篇博客继续*
</textarea>
    </div>
    <script src="${pageContext.request.contextPath}/editermd/examples/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/marked.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/prettify.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/raphael.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/underscore.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/sequence-diagram.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/flowchart.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/lib/jquery.flowchart.min.js"></script>
    <script src="${pageContext.request.contextPath}/editermd/editormd.js"></script>
    <script type="text/javascript">
        $(function() {
            editormd.markdownToHTML("test-editormd", {
                htmlDecode      : "style,script,iframe",
                emoji           : true,
                taskList        : true,
                tex             : true,  // 默认不解析
                flowChart       : true,  // 默认不解析
                sequenceDiagram : true  // 默认不解析
            });
        });
    </script>

</body>

</html>
