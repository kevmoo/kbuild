require 'formula'

class Kbuild < Formula
  version '0.2'
  url 'git://github.com/kevmoo/ktools.git', :using => :git

  def install
    prefix.install Dir['*']
  end
end
