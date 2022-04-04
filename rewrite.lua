-- 引数に渡されたファイルの中身をまっさらにしてからeditコマンドを実行する
-- /binディレクトリの中に入れておくと便利です

local args = {...}
local editCommandName = "edit"

if #args < 1 then
    error("引数が足りません。")
    os.exit(1)
end

local f = io.open(args[1], "w")
f:write("")
f:close()

function argToStr()
    local s = ""
    for i = 1, #args do
        s = s..args[i].." "
    end
    return s
end

os.execute(editCommandName.." "..argToStr())
