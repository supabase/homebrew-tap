class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.6/supabase_2.111.1-beta.6_darwin_arm64.tar.gz"
      sha256 "82756d6ee329980e07a881f0ac6fa80fe3a8b977c9be220e2c697832defd8e1a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.6/supabase_2.111.1-beta.6_darwin_amd64.tar.gz"
      sha256 "6492747c3a04ddbd299422f1f2ab5fb82bacca3bcb2485743f5c5e34cc21044b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.6/supabase_2.111.1-beta.6_linux_arm64.tar.gz"
      sha256 "4e00d3a6e286533883f5a541e51ce9dcc0281af8e1f1431f7302273567b32e6e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.6/supabase_2.111.1-beta.6_linux_amd64.tar.gz"
      sha256 "cf7df1b1bd19d4e95bfd03b6f31fc3e0926d55cb6229c58bd20bab6c1dd68c8b"
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
