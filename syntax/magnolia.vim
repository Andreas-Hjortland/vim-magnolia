if exists("b:current_syntax")
	finish
endif

" Keywords
syntax keyword magnoliaKeyword     yield with var val top times src simplify pre[cond]
syntax keyword magnoliaKeyword     retain renaming remove recover quotient qed protect
syntax keyword magnoliaKeyword     post partition on not meta literal generate full free
syntax keyword magnoliaKeyword     export end doc def[ault] declared datainvariant Constant
syntax keyword magnoliaKeyword     congruence by begin approximates algo 
syntax keyword magnoliaStatement   assert test return let in
syntax keyword magnoliaOperators   call =>
syntax keyword magnoliaConditional if then else unless 
syntax keyword magnoliaRepeat      for while do skip break 
syntax keyword magnoliaIncludes    require[s] use import[s]
syntax keyword magnoliaDefine      package external builtin module extend[s]
syntax keyword magnoliaStructs     struct 
syntax keyword magnoliaErrors      alert throwing guard
syntax keyword magnoliaParamMode   obs upd out exp giv del nrm
syntax keyword magnoliaFunction    procedure axiom function implementation program predicate
syntax keyword magnoliaAlgebra     concept theorem subalgebra satisfaction signature proof preserve
syntax keyword magnoliaAlgebra     morphism models homomorphism[s] derived defines assume abstract

"syntax match magnoliaIdentifier /[0-9 A-Z _ a-z $#]\+/
syntax match   magnoliaComment /\/\/.*/
syntax match   magnoliaNumber /[^a-zA-Z0-9_$#][0-9]\+\(\.[0-9]\+\)\?[^a-zA-Z0-9_$#]/

" Regions
syntax region  magnoliaString  start=+"+    end=+"+     skip=+\\"+
syntax region  magnoliaComment start="/\*"  end="\*/"
syntax region  magnoliaType    matchgroup=magnoliaTypeKeyword start=/type/ end=/[^ A-Za-z_$#]/me=e-1
syntax region  magnoliaType    start=/:/ms=e+1 end=/[^ A-Za-z_$#]/me=e-1


highlight link magnoliaKeyword     Keyword
highlight link deprecatedKeyword   Error
highlight link magnoliaStatement   Statement
highlight link magnoliaOperators   Operator
highlight link magnoliaConditional Conditional
highlight link magnoliaRepeat      Repeat
highlight link magnoliaIncludes    Include
highlight link magnoliaDefine      Define
highlight link magnoliaStructs     Structure
highlight link magnoliaErrors      Exception
highlight link magnoliaParamMode   Special
highlight link magnoliaFunction    Function
highlight link magnoliaAlgebra     Function
highlight link magnoliaString      String
highlight link magnoliaNumber      Number
highlight link magnoliaComment     Comment
highlight link magnoliaTypeKeyword Type
highlight link magnoliaType        Identifier

let b:current_syntax = "magnolia"
