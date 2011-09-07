require 'formula'

class Kbuild < Formula
  homepage 'https://github.com/kevmoo/kbuild'
  head 'https://github.com/kevmoo/kbuild.git', :using => :git

  depends_on 'yaml' => :python

  def install
    prefix.install Dir['*']
  end
end
