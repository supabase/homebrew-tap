class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.8/supabase_2.108.0-beta.8_darwin_arm64.tar.gz"
      sha256 "243b17c4b777b365b35118098d4ba92c57284f5bbf10c2af5212e486d60e5891"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.8/supabase_2.108.0-beta.8_darwin_amd64.tar.gz"
      sha256 "dec6ee4850f6e84798a46a67a63c4caea8628cc554f1203b33665cd7e98089e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.8/supabase_2.108.0-beta.8_linux_arm64.tar.gz"
      sha256 "340a77cfbdea2d31a6fb7dcd2b317c0169a7c27f8e42f41d94497090a3647771"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.8/supabase_2.108.0-beta.8_linux_amd64.tar.gz"
      sha256 "daa4b68c447e615030b14bf45929f7fae2b52b47c9b0ce335102a5f83c5edcc6"
    end
  end

  def install
    bin.install "supabase"
    bin.install "supabase-go" if File.exist?("supabase-go")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
