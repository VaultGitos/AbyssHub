-- Credit to cattoware, i just added remove connection cuz i need it!
local Library = {
    Connections = {}
}

function Library:AddConnection(Name, Main, Func)
    if typeof(Func) == "function" then
        ToConnect = Main:Connect(Func)
        table.insert(self.Connections, ToConnect)
    end
end

function Library:RemoveConnection(Name)
    self.Connections[Name]:Disconnect()
end

function Library:RemoveAllConnections()
    for i, v in pairs(self.Connections) do
        v:Disconnect()
    end
end

return Library
