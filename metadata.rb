name              'esha-teamcity'
maintainer        'Christopher Elkins'
maintainer_email  'chrise@esha.com'
license           'Apache 2.0'
description       'Installs and configures TeamCity'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '0.1.0'

recipe 'esha-teamcity::agent', 'Installs and configures a TeamCity build agent'

depends 'awscli',         '~> 1.0'
depends 'cfcli',          '~> 0.1'
depends 'git',            '~> 4.0'
depends 'java',           '~> 1.30'
depends 'java-libraries', '~> 0.2'
depends 'teamcity',       '~> 0.2'

%w( amazon centos debian fedora oracle redhat scientific ubuntu ).each do |os|
  supports os
end
