; extends

; JavaScript 的 class 名字是 identifier
(class_declaration
  name: (identifier) @type.definition
  (#set! "priority" 110))

; 只有 class 里的成员字段定义走红色
(field_definition
  property: (property_identifier) @variable.member.definition
  (#set! "priority" 130))

(field_definition
  property: (private_property_identifier) @variable.member.definition
  (#set! "priority" 130))

(field_definition
  (property_identifier) @variable.member.definition
  (#set! "priority" 130))

(field_definition
  (private_property_identifier) @variable.member.definition
  (#set! "priority" 130))
