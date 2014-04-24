# dq

Check how developer friendly is your machine!

`curl -sL https://raw.github.com/work-club/dq/master/bin/core/dq.sh | sh`

This should produce output like :

```
✔ curl
✔ git
✔ java
✔ node
✔ perl
✔ python
✔ ruby
✔ vi
Your dq is 8 / 8
```

There is more to it. Depending on what you develop, we have got some preselected profiles:

#### Minimal
To see if you have some common commands installed that a developer machine usually needs
`curl -sL https://raw.github.com/work-club/dq/master/bin/core/dq.sh | sh`

#### shell tools
`curl -sL https://raw.github.com/work-club/dq/master/bin/shell/dq.sh | sh`

#### ruby dev
`curl -sL https://raw.github.com/work-club/dq/master/bin/ruby_dev/dq.sh | sh`

#### python dev
`curl -sL https://raw.github.com/work-club/dq/master/bin/python_dev/dq.sh | sh`

#### frontend dev
`curl -sL https://raw.github.com/work-club/dq/master/bin/frontend_dev/dq.sh | sh`

#### java dev
`curl -sL https://raw.github.com/work-club/dq/master/bin/java_dev/dq.sh | sh`

#### clojure dev
`curl -sL https://raw.github.com/work-club/dq/master/bin/clojure_dev/dq.sh | sh`

#### groovy dev
`curl -sL https://raw.github.com/work-club/dq/master/bin/groovy_dev/dq.sh | sh`

#### scala dev
`curl -sL https://raw.github.com/work-club/dq/master/bin/scala_dev/dq.sh | sh`

#### db
`curl -sL https://raw.github.com/work-club/dq/master/bin/db/dq.sh | sh`

#### all

**Feeling courageous**, see what all you have got :

`curl -sL https://raw.github.com/work-club/dq/master/bin/all/dq.sh | sh`

This checks for about 40 commands on your box

## Rolling out your own

When you need to mix and match, it's equally simple. Checkout the repo, and execute from the root:

`ruby build.rb <group1> <group2>... | sh`

For example, if you develop frontend apps with node/ruby and use some typical databases

`ruby build.rb ruby_dev frontend_dev db| sh`

Or, you develop server side java/groovy and use some common databases

`ruby build.rb java_dev groovy_dev db | sh`

There no external gem dependency, you just need to have `ruby` though.

## About

Ever got onto a new machine or a remote server ? If you develop, you almost certainly need to check availability of your
tool-chain on command line. DQ is intended to relieve you from pain of checking each command individually.

It was named DQ as Developer Quotient (or Developer Friendliness Quotient of a machine), which may not be the most
apt name but that was the best name I could think of.

## Contributing

Please submit more command checks, it's very easy to do so. Fork the repo and send PR.
Issues and feedback welcomed.

## Paranoid ?

Don't want to run `curl` piping to `sh`. Understandably, you might be concerned. Worry not.
- The source is hosted and is served directly from github, no app server in the middle.
- If you still want to check, do a  `curl -sL https://raw.github.com/work-club/dq/master/bin/core/dq.sh | cat`  first.
    (basically, replacing `sh` with `cat`, to see the content of the file )

### ♥
