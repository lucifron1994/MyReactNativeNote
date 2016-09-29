Develop Note 16-9-20



CAAnimation 

http://www.cocoachina.com/ios/20160919/17592.html





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

```
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.textView becomeFirstResponder];
}
```





Xcode8 创建的xib不向下兼容

textView做placeholder时候重写drawRect，但在更改textView高度约束后，drawRect中绘制的文字会消失，需要调整尺寸后调用setNeedDisplay



TextView 需要先设置文字后设置居中才会正常

        messageTextView.textAlignment = NSTextAlignmentCenter;




- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

    [self.searchBar becomeFirstResponder];
  }



cell选中背景色重置

```
-(void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    UIColor *originColor = [UIColor orangeColor];
    
    [super setSelected:selected animated:animated];
    self.cellView.applyButton.backgroundColor = originColor;
    
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    
    UIColor *originColor = [UIColor orangeColor];
    
    [super setHighlighted:highlighted animated:animated];
    
    self.cellView.applyButton.backgroundColor = originColor;
    
}
```

