#!/usr/bin/env index.lua

-- index.lua
require"orbit"

-- declaration
module("myorbit", package.seeall, orbit.new)

-- handler

function index(web)
   return my_home_page()
end

-- dispatch
myorbit:dispatch_get(index, "/", "/index")

-- Sample page

function my_home_page()

   return [[
      <head></head>
      <html>
         <h2>First Page</h2>
      </html>
   ]]
	
end