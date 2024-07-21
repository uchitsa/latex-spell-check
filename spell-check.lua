local spell_check = function(filename)
  local cmd = string.format("aspell -t -c %s", filename)
  local handle = io.popen(cmd)
  local result = handle:read("*a")
  handle:close()

  if result:match("Error:") then
    print("spell check failed")
    os.exit(1)
  end
end

local main = function()
  local filename = os.getenv("TEXTINPUTS")
  if filename then
    spell_check(filename)
  else
    print("latex file is not defined")
    os.exit(1)
  end
end

main()
