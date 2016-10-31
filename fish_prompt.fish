function fish_prompt
  test $status -ne 0;
    and set -l colors red red c00
    or set -l colors black normal white

  set -l pwd (prompt_pwd)
  set -l base (basename "$pwd")

  set -l expr "s|~|"(fst)"^^"(off)"|g; \
               s|/|"(snd)"/"(off)"|g;  \
               s|"$base"|"(fst)$base(off)" |g"

  echo -n (echo "$pwd" | sed -e $expr)(off)

  for color in $colors
    echo -n (set_color --bold $color)">"
  end

  echo -n " "
end
