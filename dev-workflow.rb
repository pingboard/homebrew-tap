require 'formula'

class DevWorkflow < Formula
  homepage 'https://github.com/pingboard/dev-workflow'
  url 'https://github.com/pingboard/dev-workflow/archive/0.0.2.tar.gz'
  sha1 '6ad64265cb1996c68d8a7d7d6411d6334a81c160'

  depends_on 'git-flow-avh'
  depends_on 'pivotal-tracker' => :ruby
  depends_on 'phantomjs'
  depends_on 'postgresql'
  depends_on 'redis'
  depends_on 'elasticsearch'
  depends_on 'overcommit' => :ruby
  
  def install
    bin.install 'git-pivotal'
    share.install 'hooks'
  end

  def caveats
    s = <<-EOS.undent
      Add your personal pivotal token and the Pingboard project id to the git config

        git config --add pivotal.token PIVOTAL_TOKEN
        git config --add pivotal.project-id PIVOTAL_PROJECT_ID

      Next install Overcommit in the CODEBASE_PATH

        overcommit --install

      Finally link the custom git hooks for pivotal integration.

        ln -sf #{opt_prefix}/share/hooks/prepare-commit-msg CODBASE_PATH/pingboard/.git/hooks/prepare-commit-msg
        ln -sf #{opt_prefix}/share/hooks/pre-flow-feature-finish CODBASE_PATH/pingboard/.git/hooks/pre-flow-feature-finish
    EOS
  end
end

