## RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter.

* [Rubocop gem](https://github.com/rubocop/rubocop)
* [Default rubocop config](https://github.com/rubocop/rubocop/blob/master/config/default.yml)

## Add rubocop to your ruby project

1. Create Gemfile
```
touch Gemfile
```
2. Add rubocop gem with source to your Gemfile
```
source 'https://rubygems.org'

gem 'rubocop', require: false
```
3. Run bundle
```
bundle
```
4. Create .rubocop.yml config file
```
touch .rubocop.yml
```
5. Add rubocop rules to config file (for example, the full list of rules can be found in the rubocop documentation)
```
AllCops:
  NewCops: enable
```
6. Run rubocop
```
rubocop
```

## Result of linting with rubocop for my example.rb

```
Inspecting 2 files
.C

Offenses:

example.rb:1:1: C: Style/Documentation: Missing top-level documentation comment for class Dog.
class Dog
^^^^^^^^^
example.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
class Dog
^
example.rb:4:25: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
  def initialize(name = "Rex")
                        ^^^^^
example.rb:5:17: C: [Correctable] Layout/TrailingWhitespace: Trailing whitespace detected.
    @name = name 
                ^
example.rb:9:5: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    "German Shepherd"
    ^^^^^^^^^^^^^^^^^
example.rb:15:4: C: [Correctable] Layout/TrailingEmptyLines: Final newline missing.
end
   

2 files inspected, 6 offenses detected, 5 offenses auto-correctable
```

## Safe auto-correct
#### In auto-correct mode, RuboCop will try to automatically fix offenses

```
rubocop -a
```
or
```
rubocop --auto-correct
```

#### There are a couple of things to keep in mind about auto-correct:

* For some offenses, it is not possible to implement automatic correction.
* Some automatic corrections that are possible have not been implemented yet.
* Some automatic corrections might change (slightly) the semantics of the code, meaning they’d produce code that’s mostly equivalent to the original code, but not 100% equivalent. We call such auto-correct behaviour "unsafe".
