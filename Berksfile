source "https://supermarket.chef.io"

metadata

cookbook 'java'

group :integration do
  cookbook 'wrapper', path: 'test/fixtures/cookbooks/wrapper'
  cookbook 'apt'
  cookbook 'yum'
end

cookbook 'syslog-ng', git: 'git@github.com:dschlenk/syslog-ng.git'
