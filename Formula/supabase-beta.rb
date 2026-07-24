class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.38/supabase_2.110.0-beta.38_darwin_arm64.tar.gz"
      sha256 "2c9fa86d4c4be4bfb48a83edddcb928adeea1645bd17fb96aaa1ffa5c47f88ae"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.38/supabase_2.110.0-beta.38_darwin_amd64.tar.gz"
      sha256 "d225c49d1863bca7120093a66376ba4c834ee692a187ad53ec0acb86eef10d09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.38/supabase_2.110.0-beta.38_linux_arm64.tar.gz"
      sha256 "f2fd6e2cb43b746fdddcb46b736bc741998dde843022dbfb351a44890309fc62"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.38/supabase_2.110.0-beta.38_linux_amd64.tar.gz"
      sha256 "4ae6a783a1a916f89201fca5e1bcc78fb5a7121e229a3f08f5b1c97328e7a01e"
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
