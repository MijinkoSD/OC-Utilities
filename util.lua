util = {}

--指定したコンポーネントのアドレスをまとめて取得します
function util.getComponentIDs(name)
    local allKeys = require("component").list()
    local keys = {}
    for k, v in pairs(allKeys) do
        if v == name then
            table.insert(keys, k)
        end
    end
    return keys
end

--テーブル型の変数の値を出力します
function util.print(tbl)
    if type(tbl) ~= "table" then
        print(tbl)
    elseif next(tbl) == nil then
        print("{}")
    else
        for k, v in pairs(tbl) do print(k, v) end
    end
end

--連想配列からキーだけを取り出して返します
function util.tableKeys(tbl)
    local keys = {}
    for k, v in pairs(tbl) do
        table.insert(keys, k)
    end
end

--テーブルの値をコピーします
function util.copyTable(tbl)
    local tbl2 = {}
    for k, v in pairs(tbl) do
        tbl2[k] = v
    end
    return tbl2
end

return util
