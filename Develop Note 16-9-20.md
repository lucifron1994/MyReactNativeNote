Develop Note 16-9-20

工厂方法内：

```objective-c
    [closeButton addTarget:banner action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
```

target 不是self了

同方法内

```
//    [navigation.navigationBar insertSubview:banner atIndex:0];
```

没响应，待解决

☀︎



Xcode8 创建的xib不向下兼容

textView做placeholder时候重写drawRect，但在更改textView高度约束后，drawRect中绘制的文字会消失，需要调整尺寸后调用setNeedDisplay
