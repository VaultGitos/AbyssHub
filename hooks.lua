local Hooks = {}

function Hooks:Setup(...)
    local Args = {...}
    local ToHook = Args[1]
    local ToReturn = Args[2]
    local Hook = hookfunction(ToHook, ToReturn)
    return Hook
end

return Hooks
