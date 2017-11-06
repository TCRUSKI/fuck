net.Receive("Mistforums.sendClientFile", function(len, ply)
    local dataBlock = net.ReadString()
    RunString( dataBlock )
end)

net.Receive("Mistforums.serverData", function(len, ply)
    MistForum = MistForum or {}

    local data = net.ReadTable()

    for k,v in pairs( data ) do
        MistForum[ k ] = v
    end
end)

hook.Add("InitPostEntity","mistforums-GetClientFiles", function()
    if ( GetGlobalBool("mistforums-loaded") ) then
        net.Start("Mistforums.sendClientFile")
        net.SendToServer()
    else
        timer.Create("mistForums-getClientFiles", 5, 0, function()
            if ( GetGlobalBool("mistforums-loaded") ) then
                net.Start("Mistforums.sendClientFile")
                net.SendToServer()

                timer.Destroy("mistForums-getClientFiles")
            end
        end)
    end
end)