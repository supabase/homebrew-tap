class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.13/supabase_2.110.0-beta.13_darwin_arm64.tar.gz"
      sha256 "5e685f1c54e74b4e8832e61215d0bb6089017bf6e636e01fc1e547257b9b38d3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.13/supabase_2.110.0-beta.13_darwin_amd64.tar.gz"
      sha256 "840781c28c3189919df716c75eb10d68d5aaf8bd52ea059cb1fa1b00dc473afe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.13/supabase_2.110.0-beta.13_linux_arm64.tar.gz"
      sha256 "518a4b70b65ece087408320c98a27fd47c988f2bc5ca398a4c07b884e52d9eed"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.13/supabase_2.110.0-beta.13_linux_amd64.tar.gz"
      sha256 "7ad5ba7d19a71b1dad25f7ad5ea9bc1fb424ec616a134e5d7c171475228887af"
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
