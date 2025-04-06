print(LUA_PATH)

local dir = File {
  state = "Present",
  file_type = "Directory",
  path = "/tmp/test-from-caravel2",
}

for i = 1, 100 do
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

package.path = "/var/lib/caravel/cache/pkmollman-caravel_config_repo/?;/var/lib/caravel/cache/pkmollman-caravel_config_repo/?.lua"

local root_level_thing = require("root")

print("root level thing.name: " .. root_level_thing.name)

local nested_test_level_thing = require("nestes_package.test")

print("nested test level thing.name: " .. nested_test_level_thing.name)