// More smaller views better
// Swift: Variables must have a value

// Struct vs Class

// Ctrl+Command+Space: Emoji

// 修改Text等，单击Text，右侧inspector，设置字体等

// Adjust the preview:
// ContentView_Previews
// 	Has inspector
// 	Change to dark mode
// 	Can have 2 contentView

// Stroke: 外围跑道
// fill同时border： 创建两个rectangle


// var变量 let 常量

// Infer a type 

// Mutli-touch events

.onTapGesture(perform: {}) //函数作为onTapGesture的变量
因为是唯一的变量，所以等同于.onTapGesture{}

// self is immutable
// All the views will be rebuilt and replaced

// How to change
// Make the view to look at sth in the memory内存 and view will rebuild change when it changes	
@State var //For temporary change


// 看文档/变量类型 option+点击

var emojis:[Array<String>]  = ["🚗", "🛴", "✈️"]
var emojis:[String]  = ["🚗", "🛴", "✈️"]
var emojis = ["🚗", "🛴", "✈️"]


ForEach(emojis, content:{ emoji in //add arguments to functions
	CardView(content : emoji)
})

//View need an identifier, need a ‘id’
//⬇︎
ForEach(emojis, id: \.self, content:{ emoji in //add arguments to functions
	CardView(content : emoji)
})
//all the struct have var on themselves called self, means the struct self
//.self on String, I get the String itself
// id: \.self self is String itself
//use String as identifier
//CardViews with same emoji String refer to the same CardView


//content is a function and last one, so
//⬇︎
ForEach(emojis, id: \.self) { emoji in 
	CardView(content : emoji)
}


Arrange 
//⬇︎
ForEach(emojis[0..<6], id: \.self) { emoji in 
	CardView(content : emoji)
}

