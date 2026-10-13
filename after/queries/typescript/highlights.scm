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

; class 定义处的名字走红色；interface 名字跟类型用法一样走白色
(class_declaration
  name: (type_identifier) @type.definition
  (#set! "priority" 110))

(abstract_class_declaration
  name: (type_identifier) @type.definition
  (#set! "priority" 110))

; 只有 class 里的成员字段定义走红色；this.store / { type: } 仍是 @variable.member
(public_field_definition
  name: (property_identifier) @variable.member.definition
  (#set! "priority" 130))

(public_field_definition
  name: (private_property_identifier) @variable.member.definition
  (#set! "priority" 130))
