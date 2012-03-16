require 'formula'

class Vim < Formula
  # Get stable versions from hg repo instead of downloading an increasing
  # number of separate patches.
  url 'https://vim.googlecode.com/hg/', :revision => '6171bdef2ffa'
  version '7.3.471'
  homepage 'http://www.vim.org/'

  head 'https://vim.googlecode.com/hg/'

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--enable-gui=no",
                          "--without-x",
                          "--disable-nls",
                          "--enable-multibyte",
                          "--with-tlib=ncurses",
                          "--enable-pythoninterp",
                          "--enable-rubyinterp",
                          "--with-ruby-command=/usr/bin/ruby",
                          "--with-features=huge"
    system "make"
    system "make install"
  end
end
