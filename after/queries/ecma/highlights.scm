; extends

; 只有声明处的变量名走红色；使用处仍是 @variable
; 不要在这里写 class_declaration：TypeScript 会继承这份 query，
; 而 TS 的 class 名字是 type_identifier，写成 identifier 会整份高亮失效。
(variable_declarator
  name: (identifier) @variable.declaration
  (#set! "priority" 105))

; const foo = () => {} 这类当函数定义，走红色
(variable_declarator
  name: (identifier) @function
  value: (arrow_function)
  (#set! "priority" 115))

(variable_declarator
  name: (identifier) @function
  value: (function_expression)
  (#set! "priority" 115))
