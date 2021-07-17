#!/usr/bin/env index.lua
require"orbit"

function wrap (inner)
   return html{ head(), body(inner) }
end

function test ()
   return wrap(form (H'table' {
      tr{td"First name",td( input{type = 'text', name='first'})},
      tr{td"Second name",td(input{type = 'text', name='second'})},
      tr{ td(input{type = 'submit', value = 'Submit!'}),
         td(input{type = 'submit',value = 'Cancel'})
      },
   }))
end

orbit.htmlify(wrap,test)

print(test())