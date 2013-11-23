class gitlab::ruby{

    include rvm
    rvm_system_ruby { 'ruby-1.9.3':
        ensure      => 'present',
        default_use => true,
    }

    rvm::system_user { git: }

}
