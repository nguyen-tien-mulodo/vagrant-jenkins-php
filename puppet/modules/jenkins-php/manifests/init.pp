class jenkins-php {
    include php
    include jenkins

    service { "iptables":
        ensure => "stopped",
        enable => false,
    }

    php::pear::module { 'PHPUnit':
        repository  => 'pear.phpunit.de',
        use_package => 'no',
        alldeps     => true,
        timeout     => 0,
    }

    php::pear::module { 'PHP_CodeSniffer':
        use_package => 'no',
        alldeps     => true,
        timeout     => 0,
    }

    php::pear::module { 'phploc':
        repository  => 'pear.phpunit.de',
        use_package => 'no',
        alldeps     => true,
        timeout     => 0,
    }

    php::pear::module { 'PHP_Depend':
        repository  => 'pear.pdepend.org',
        use_package => 'no',
        alldeps     => true,
        timeout     => 0,
    }

    php::pear::module { 'PHP_PMD':
        repository  => 'pear.phpmd.org',
        use_package => 'no',
        alldeps     => true,
        timeout     => 0,
    }

    php::pear::module { 'phpcpd':
        repository  => 'pear.phpunit.de',
        use_package => 'no',
        alldeps     => true,
        timeout     => 0,
    }

    php::pear::module { 'phpDox':
        repository  => 'pear.netpirates.net',
        use_package => 'no',
        alldeps     => true,
        preferred_state => 'alpha',
        timeout     => 0,
    }

    package { "php-xml":
        ensure  => present,
        require => Package['php'],
    }

    package { "ant":
        ensure => present,
    }

    jenkins::plugin { "git": }
    jenkins::plugin { "checkstyle": }
    jenkins::plugin { "cloverphp": }
    jenkins::plugin { "dry": }
    jenkins::plugin { "htmlpublisher": }
    jenkins::plugin { "jdepend": }
    jenkins::plugin { "plot": }
    jenkins::plugin { "pmd": }
    jenkins::plugin { "violations": }
    jenkins::plugin { "xunit": }
}
