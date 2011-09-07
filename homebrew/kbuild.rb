require 'formula'

class Kbuild < Formula
  homepage 'https://github.com/kevmoo/kbuild'
  head 'https://github.com/kevmoo/kbuild.git', :using => :git

  # You'll need to install yaml for Python
  #
  # If you have pip installed: (http://www.pip-installer.org/)
  # `pip install PyYAML`
  depends_on 'yaml' => :python

  def install
    prefix.install Dir['*']
  end
end
