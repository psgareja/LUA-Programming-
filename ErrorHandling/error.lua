function myfunction ()
    n = n/nil
 end
 
 if pcall(myfunction) then
    print("Success")
 else
     print("Failure")
 end