local spell_check = function(filename)
  local cmd = string.format("aspell -t -c %s",filename)
end

local main = function()
  local filename = os.getenv("TEXTINPUTS")
  if filename then
    spell_check(filename)
  else
    print("latex file is not defined")
    os.exit(1)
end

main()
