require 'formula'

class Kbuild < Formula
  homepage 'https://github.com/kevmoo/kbuild'
  head 'https://github.com/kevmoo/kbuild.git', :using => :git

  depends_on 'yaml' => :python
  depends_on 'termcolor' => :python

  def install
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    You also need:
    * java - Tested with 1.6
    * python - 2.7 is required
      * yaml - `pip install PyYAML`
      * termcolor - 'pip install termcolor'
      * closure_linter (optional)
        * enables `kbuild fix` and `kbuild lint`
        * `pip install http://closure-linter.googlecode.com/files/closure_linter-2.3.tar.gz`
    EOS
  end

end
