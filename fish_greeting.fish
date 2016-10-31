function fst; set_color --bold yellow; end
function snd; set_color red; end
function trd; set_color --bold red; end
function dim; set_color --bold black; end
function off; set_color normal; end

function fish_greeting
  echo (uname -mnprs)(off)
end
