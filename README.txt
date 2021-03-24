= faa_edr

home  :: http://github.com/dsisnero/edr
code  :: http://github.com/dsisnero/edr
bugs  :: http://github.com/dsisnero/edr/issues
... etc ...

== DESCRIPTION:

This is a FAA gem to connect to edr

== FEATURES/PROBLEMS:

*  connect to oracle Edr using repository patter 

== SYNOPSIS:

fac_repo = Edr::Repos::FacilityRepo.new
btf_rtr = fac_repo.get('BTF','RTR')

org_repo = Edr::Repos::OrganizationRepo.new

btf_org = org_repo.organizations.where(cc_cd: btf_rtr.cc_cd, rgn_cd: btf_rtr.rgn_cd).first

employee_repo = Edr::Repos::EmployeeRepo.new
employees = employee_repo.employees.where(cc_cd: btf_org.cc_cd).to_a

== REQUIREMENTS:


== INSTALL:

* sudo gem install

== DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== LICENSE:

(The MIT License)

Copyright (c) 2019 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
