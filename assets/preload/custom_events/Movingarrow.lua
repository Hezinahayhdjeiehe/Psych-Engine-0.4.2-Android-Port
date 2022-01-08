function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str)
    end
    return t
end

-- Event notes hooks
function onEvent(value1, value2)
    local tableee=mysplit(value2,", ") -- Splits value1 into a table
    noteTweenX("", value1, tableee[1], tableee[3], "quartInOut")
    noteTweenY("", value1, tableee[2], tableee[3], "quartInOut")
end