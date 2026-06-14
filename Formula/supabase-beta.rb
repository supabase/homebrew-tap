class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.13/supabase_2.107.0-beta.13_darwin_arm64.tar.gz"
      sha256 "db5340e9acf6ccab6afb7b90ac0f3950b17e48a348e54e92271b8635f71c813e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.13/supabase_2.107.0-beta.13_darwin_amd64.tar.gz"
      sha256 "59d9973fd392f93b7a3a82e91275337332f0d54552be4311c8dc6e75a14079f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.13/supabase_2.107.0-beta.13_linux_arm64.tar.gz"
      sha256 "54368569f25327eec1bc9e64e3dacb151780e236ab075db2ca099326f932c760"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.13/supabase_2.107.0-beta.13_linux_amd64.tar.gz"
      sha256 "576a8ae1989931590fb75b2547df9e0fc604cc7378c63b58736574bbc0a1b3be"
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
