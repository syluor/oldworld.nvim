; extends

; 只有声明处的变量名走红色；使用处仍是 @variable
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

; class / interface 定义处的名字走红色；类型用法仍是 @type
(class_declaration
  name: (type_identifier) @type.definition
  (#set! "priority" 110))

(abstract_class_declaration
  name: (type_identifier) @type.definition
  (#set! "priority" 110))

(interface_declaration
  name: (type_identifier) @type.definition
  (#set! "priority" 110))
