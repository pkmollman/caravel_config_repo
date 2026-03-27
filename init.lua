print("FACTS")
print("OS: " .. facts.os.pretty_name)
print("Kernel: " .. facts.kernel.release)
print("My IP: " .. facts.network.ip)

local dir = File {
    state = "Present",
    file_type = "Directory",
    path = "/tmp/test-from-caravel2",
}

for i = 1, 1000 do
    File {
        state = "Present",
        file_type = "File",
        path = dir.path .. "/file" .. i .. ".txt",
        content = "file number" .. i .. "\n",
    }
end

-- Person {
--     name = "me"
-- }

-- local p = Person

-- p {
--     name = "pp"
-- }


-- local thing = {
--     stuff = "hi"
-- }

-- local root_level_thing = require("root")

-- print("root level thing.name: " .. root_level_thing.name)

-- local nested_test_level_thing = require("nested_package.test")

-- print("nested test level thing.name: " .. nested_test_level_thing.name)

-- local file_owner_uid = caravel.core.file { path = "/opt/somefile" }.uid
-- local children = caravel.core.find { path = "/var/run/somedirectory" }
-- local file_paths = {}
-- for i, child in ipairs(children) do
--     if child.type == "directory" then
--         table.insert(file_paths, child.path)
--     end
-- end
-- for i, fpath in ipairs(file_paths) do
--     caravel.core.file { path = fpath, uid = file_owner_uid }
-- end
