local dir = File {
    state = "Present",
    file_type = "Directory",
    path = "/tmp/test-from-caravel2",
}

for i = 1, 10000 do
    File {
        state = "Present",
        file_type = "File",
        path = dir.path .. "/file" .. i .. ".txt",
        content = "hi there new " .. i .. "\n",
    }
end

Person {
    name = "me"
}

local p = Person

p {
    name = "pp"
}

local root_level_thing = require("root")

print("root level thing.name: " .. root_level_thing.name)

local nested_test_level_thing = require("nested_package.test")

print("nested test level thing.name: " .. nested_test_level_thing.name)

local results = os.execute("ls /tmp")

print("------")
print(results)
