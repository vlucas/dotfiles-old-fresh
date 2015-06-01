# bundle exec
alias b='bundle'
alias be='bundle exec'
alias bi='bundle install --path vendor/bundle --binstubs vendor/bundle/bin'

# Switch ruby versions with homebrew. See: https://gist.github.com/ericboehs/5329013
rbv () { brew switch ruby $(brew switch ruby list 2>&1 |tail -1|cut -d\  -f3-|tr -d ','|tr ' ' "\n" | grep "^$1" | head -1) && source ~/.zsh/config }
