# Copyright (c) 2012 Solano Labs All Rights Reserved

namespace :tddium do
  desc "tddium pre hook"
  task :pre_hook do
    url="s3://solano-labs.s3.amazonaws.com/s3store/todo.enc"
    Kernel.system("s3store fetch #{url}")
    Kernel.system("mv todo.enc #{ENV['TDDIUM_REPO_ROOT']}/data/secret.dat")
  end
end
