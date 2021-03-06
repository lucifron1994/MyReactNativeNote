### JS Mark

------

React/React Native 的ES5 ES6写法对照表

http://bbs.reactnative.cn/topic/15/react-react-native-的es5-es6写法对照表



=> 箭头函数

https://imququ.com/post/arrow-function-in-es6.html

http://www.infoq.com/cn/articles/es6-in-depth-arrow-functions/

```javascript
{ this.state['text'].split(' ').map( (word) => word && '🍕').join(' ') }
```

-----

```javascript
var o = {
    x : 1,
    func : function() { console.log(this.x) },
    test : function() {
        setTimeout(function() {
            this.func();
        }, 100);
    }
};
```

------

**”==”与”===”是不同的,一个是判断值是否相等,一个是判断值及类型是否完全相等。**
下面的规则用于判定===运算符比较的两个值是否相等的判断条件
•如果两个值的类型不同，它们就不相同。
•如果两个值是数字，而且值相同，那么除非其中一个或两个都是NaN(这种情况它们不是等同的),否则它们是等同的。值NaN永远不会与其他任何值等同，包括它自身(奇怪的家伙),要检测一个值是否是NaN，可以使用全局函数isNaN()。
•如果两个值都是字符串，而且在串中同一位置上的字符完全相同，那么它们就完全等同。如果字符串的长度或内容不同，它们就不是等同的。
•如果两个值都是布尔型true，或者两个值都是布尔型false，那么它们等同。
•如果两个值引用的是同一个对象、数组或函数，那么它们完全等同。如果它们引用的是不同的对象（数组或函数），它们就不完全等同，即使这两个对象具有完全相同的属性，或两个数组具有完全相同的元素。
•如果两个值都是null或都是undefined，它们完全相同。

**下面的规则用于判定==运算符比较的两个值是否相等的判断条件**
•如果两个值具有相同的类型，那么就检测它们的等同性。如果这两个值完全相同，它们就相等。如果它们不完全相同，则它们不相等。
•如果两个值的类型不同，它们仍然可能相等。用下面的规则和类型转换来检测它们的相等性 ◦如果一个值是null，另一个值是undefined，它们相等。
◦如果一个值是数字，另一个值是字符串，把字符串转换为数字，再用转换后的值进行比较。
◦如果一个值为true，将它转化为1，再进行比较。如果一个值为false，把它转化为0，再进行比较。
◦如果一个值是对象，另一个值是数字或字符串，将对象转换成原始类型的值，再埋比较。可以使用对象的toString()方法或valueOf()方法把对象转化成原始类型的值。JavaScript核心语言的内部类通常先尝试valueOf()方法转换，再尝试toString()方法转换，但是对于Date类，则先执行toString()方法再执行valueOf()方法转换。不属于JavaScript核心语言的对象则可以采用JavaScript实现定义的方式把自身转换成原始数值。
◦其他的数值组合是不相等的。