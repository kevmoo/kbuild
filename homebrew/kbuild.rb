require 'formula'

class Kbuild < Formula
  head 'git://github.com/kevmoo/ktools.git'

  def install
    prefix.install Dir['*']
  end
end
