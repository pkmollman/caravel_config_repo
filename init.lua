local dir = File {
    state = "Present",
    file_type = "Directory",
    path = "/test-from-caravel2",
}

function tprint(tbl, indent)
  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    local formatting = string.rep("  ", indent) .. k .. ": "

    if type(v) == "table" then
      print(formatting)
      tprint(v, indent+1)
    elseif type(v) == "boolean" then
      print(formatting .. tostring(v))
    elseif type(v) == "userdata" then
      -- Handle userdata by converting to string
      print(formatting .. tostring(v))  -- Use tostring to safely print userdata
    else
      print(formatting .. tostring(v))  -- Convert all other types to string
    end
  end
end

tprint(dir)

print(dir.gid)

for i = 1, 10000 do
    File {
        state = "Present",
        file_type = "File",
        path = dir.path .. "/file" .. i .. ".txt",
        content = "hi there " .. i .. "\n",
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
