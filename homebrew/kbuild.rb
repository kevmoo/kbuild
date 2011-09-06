require 'formula'

class Kbuild < Formula
  head 'git://github.com/kevmoo/kbuild.git'

  def install
    prefix.install Dir['*']
  end
end
