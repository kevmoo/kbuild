require 'formula'

class Kbuild < Formula
  head 'git://github.com/kevmoo/kbuild.git'

  depends_on 'yaml' => :python

  def install
    prefix.install Dir['*']
  end
end
