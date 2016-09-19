## React native mark 1

配置环境 homebrew nodejs ...

创建一个工程并运行

```
react-native init AwesomeProject

cd AwesomeProject

react-native run-ios
```





组件能够撑满剩余空间的前提是其父容器的尺寸不为零。如果父容器既没有固定的width和height，也没有设定flex，则父容器的尺寸为零。其子组件如果使用了flex，也是无法显示的。



Flex Direction

在组件的style中指定flexDirection可以决定布局的主轴。子元素是应该沿着水平轴(row)方向排列，还是沿着竖直轴(column)方向排列呢？默认值是竖直轴(column)方向。



Justify Content

在组件的style中指定justifyContent可以决定其子元素沿着主轴的排列方式。子元素是应该靠近主轴的起始端还是末尾段分布呢？亦或应该均匀分布？对应的这些可选项有：flex-start、center、flex-end、space-around以及space-between。



Align Items

在组件的style中指定alignItems可以决定其子元素沿着次轴（与主轴垂直的轴，比如若主轴方向为row，则次轴方向为column）的排列方式。子元素是应该靠近次轴的起始端还是末尾段分布呢？亦或应该均匀分布？对应的这些可选项有：flex-start、center、flex-end以及stretch。





```javascript
class Test918 extends Component {

  constructor(props) {
    super(props);
    const ds = new ListView.DataSource({ rowHasChanged: (r1, r2) => r1 !== r2 });
    this.state = {
      dataSource : ds.cloneWithRows([
        'John', 'Joel', 'James', 'Jimmy', 'Jackson', 'Jillian', 'Julie',
        'Devin','John', 'Joel', 'James', 'Jimmy', 'Jackson', 'Jillian', 'Julie', 'Devin'
      ])
    };
  }

  render() {
    return (

      <View style = {{paddingTop: 20 ,flex:1, backgroundColor:'orange'}}>
        <ListView
          dataSource = {this.state.dataSource}
          renderRow={(rowData) => <Text style = {{fontSize : 25}}>{rowData}</Text>}
        />
      </View>
    );
  }
}
```

 注：flex:1 不设置则listView的边界会等同于内容占用的大小



关键字让文件能被其他文件引用

```javascript
export default class MyScene extends Component {
}
```



##### Navigator 

http://www.open-open.com/lib/view/1461047062382

http://bbs.reactnative.cn/topic/20/新手理解navigator的教程

### website

入门指南

https://github.com/vczero/react-native-lesson

RN 博客

https://github.com/cnsnake11/blog/tree/master/ReactNative开发指导

React Native调试技巧与心得

http://www.jianshu.com/p/30e1d7d99a9e

孙凯博客

http://blog.talisk.cn/blog/2016/08/13/RN-Learning-path-for-iOS-developer/

ECMAScript 6简介

http://es6.ruanyifeng.com/#docs/intro

React-Native学习指南 汇总资料

https://github.com/reactnativecn/react-native-guide