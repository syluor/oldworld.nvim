; extends

; 只有声明处的变量名走红色；使用处仍是 @variable
; priority 压过普通 @variable，但低于下面的函数声明
(variable_declarator
  name: (identifier) @variable.declaration
  (#set! "priority" 105))

; const foo = () => {} 这类仍当函数名，保持蓝色
(variable_declarator
  name: (identifier) @function
  value: (arrow_function)
  (#set! "priority" 115))

(variable_declarator
  name: (identifier) @function
  value: (function_expression)
  (#set! "priority" 115))
