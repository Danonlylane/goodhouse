## Flutter好客租房项目总结



### 项目简介：本项目采用Flutter框架编写，已完成前端页面全部功能。后端联调因为官网接口已经失效，故没有进行编写。

### 项目来源：B站搜`好客租房`即可白嫖此教程（感谢上传教程视频的up主[手动🐶]）

### 开发环境：

```c++
Flutter (Channel stable, 2.2.3, on macOS 11.4 20F71 darwin-arm, locale
    zh-Hans-CN)
    • Flutter version 2.2.3 at /Users/onlybei/development/flutter
    • Framework revision f4abaa0735 (4 weeks ago), 2021-07-01 12:46:11 -0700
    • Engine revision 241c87ad80
    • Dart version 2.13.4
    • Pub download mirror https://pub.flutter-io.cn
    • Flutter download mirror https://storage.flutter-io.cn
```

### IDE ： 

- VsCode

### 项目前端页面展示：

从上到下从左到右依次是：

首页、搜索页、资讯页、个人主页、房源发布页、房屋管理页、房屋详情页、登录页、注册页

<img src="https://tva1.sinaimg.cn/large/008i3skNgy1gsx54k58o7j30u016kk0o.jpg" width="500px" />

<img src="https://tva1.sinaimg.cn/large/008i3skNgy1gsx56cakqmj31160r60wn.jpg" width="500px" />

### 项目的目录结构：

- pages：主要是各个页面的布局
- scoped_model：用于前后端数据交互
- utils：工具类，将第三方库封装为新的组件，以便后续修改和维护
- widget：主要是自己定义的widget，起到良好的代码复用和维护方便效果

<img src="https://tva1.sinaimg.cn/large/008i3skNgy1gsx5d9w907j30c40uodh4.jpg" width="250px" />

### 项目前置知识：（前排提醒：教程录制的时间Dart还没有空安全机制，因为现在flutter硬性要求空安全，而且空安全机制能够确保程序的稳定性，所以这里采用Dart2.0以上的版本。）

#### 1.空安全

- 空安全是什么？

  - 静态可选类型（没有空安全）下类型的层级结构：

    <img src="https://tva1.sinaimg.cn/large/008i3skNgy1gsx1ofzqrxj30p00jaaaz.jpg" width="250px" />

  - 健全的静态类型（空安全）下的类型层级结构：

    <img src="https://tva1.sinaimg.cn/large/008i3skNgy1gsx1r5n66oj30pe0dm0ti.jpg" width="250px" />

    

    这样 `Null` 已不再被看作所有类型的子类，那么除了特殊的 `Null` 类型允许传递 `null` 值，其他类型均不允许。我们已经将所有的类型设置为 **默认不可空** 的类型。如果你的变量是 `String` 类型，它必须包含 **一个字符串**。这样一来，我们就修复了所有的空引用错误。

    

- 为什么空安全这么重要？

  - InfoQ上有个视频[点此跳转](https://www.infoq.com/presentations/Null-References-The-Billion-Dollar-Mistake-Tony-Hoare/)，标题是`Null References: The Billion Dollar Mistake`( `空引用，价值十亿美元的错误`)，就能够充分说明了不注重空安全的话，会在实际中引发多么严重的后果。下面引用谷歌工程师描写的例子： 

    ```dart
    // Without null safety:
    bool isEmpty(String string) => string.length == 0;
    
    main() {
      isEmpty(null);
    }
    ```

    这个例子说明，在没有空安全的机制下，当`string`为空的时候，调用`string.length`时就会引发错误，就像去菜市场买肉一样，老板已经把肉全部卖完了，而我还叫老板再给我称一斤肉，这是一个明显的逻辑错误，都没有了（为空），老板就不能卖给我了（不能取`string`的长度了）。

    

- ###### 怎么样将项目中的代码转换为可以在空安全环境下运行

  - 首先要了解以下两个符号的意义

    - `?` 操作符：用在定义变量的类型之后可以说明这个变量可以为空
    - `!`操作符：可以将可空的操作对象转换为对应的非空类型

  - 情况一：在如果变量在可选参数列表中，那么在这个不为空的参数前加上`required`

    ```dart
     final String title;
     final Function onTap;
    
     const CommonFloatingActionButton(
         {Key? key, required this.title, required this.onTap}): super(key: key);
    ```

    

  - 情况二：加上可空判断。如果定义的这个变量不是必传的，那么定义的时候在变量的类型之后加上`?` 操作符。在使用这个变量的后面加上`!`操作符。

    ```dart
    	// 定义变量
    	final String? label;
      final Widget Function(BuildContext context)? contentBuilder;
      final Widget? suffix;
      final String? suffixText;
      final String? hitText;
      final ValueChanged? onChanged;
      final TextEditingController? controller;
    
    	// 使用变量
    	Text(suffixText!)
    ```



### 2.flutter中的state和context是什么？

- #### State 的概念

  - **State** 定义了 **StatefulWidget** 实例的 “**行为**”。

    它包含了用于 **交互 / 干预** Widget 信息：

    - 行为
    - 布局

    > 应用于 **State** 的任何更改都会强制 Widget 进行**重建**。    

    

- #### Context的概念

  - **Context** 仅仅是已创建的所有 Widget 树结构中某个 Widget 的位置引用。简而言之，将 **context** 作为 Widget 树的一部分，其中 context 所对应的 Widget 被添加到此树中。



- #### State和context的关系

  对于 **Stateful Widget**，**State** 与 **Context** 相关联。并且此关联是**永久性**的，**State** 对象将永远不会改变其 **context**。

  即使可以在树结构周围移动 Widget Context，**State** 仍将与该 **context** 相关联。

  当 **State** 与 **Context** 关联时，**State** 被视为**已挂载**。

  > **重点**：
  >
  > **State 对象** 与 **context** 相关联，就意味着该 **State 对象**是**不**（直接）访问**另一个 context**！

  

### 遇到的问题以及解决方法：

#### 1.因为第三方库  `flutter_advanced_networkimage: any`的空安全未解决，导致在硬性要求空安全的环境程序不能运行。

解决方法：

- 网络图片暂时先用 `Image.network`
- 本地图片暂时先用 `Image.asset`

后续：有时间深入学一下怎么把现有代码转换为支持空安全，然后为flutter社区做贡献。

#### 2.遇到这种问题，一般是因为第三方库没有引用最新版或者是不支持空安全就会引起的。

![](https://tva1.sinaimg.cn/large/008i3skNgy1gsti9ks9jfj31my0l6qas.jpg)



解决方法：

- 1.使用新版且支持空安全的第三方库
- 2.假如该库的最新版不支持空安全，再去找找有没有类似的第三方库，如果没有，那就只能自己造轮子了









































