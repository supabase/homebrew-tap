class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.21/supabase_2.107.0-beta.21_darwin_arm64.tar.gz"
      sha256 "85c36fc2c5ede2d0d1717d6b13c5bbe9cb2777593a2767be48f0bdb7ccacfe6e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.21/supabase_2.107.0-beta.21_darwin_amd64.tar.gz"
      sha256 "804c23ad00cbb7ef8ed65fd4ff80b0fa78359155ea394031e946477216df72d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.21/supabase_2.107.0-beta.21_linux_arm64.tar.gz"
      sha256 "58373b0e85b356325656e8ba94f80f2802efe646e3780f60b02e16cdc4599369"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.21/supabase_2.107.0-beta.21_linux_amd64.tar.gz"
      sha256 "71b8e9b4ac0a794f1f72987d319dafc79d0a932bf691574b7d3f9f3476e95834"
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
