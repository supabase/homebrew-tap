class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.2/supabase_2.107.0-beta.2_darwin_arm64.tar.gz"
      sha256 "4ab1788a9c61ba3ecf0e73aa832aab5297f7317804992ba43510c6f068781c2d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.2/supabase_2.107.0-beta.2_darwin_amd64.tar.gz"
      sha256 "02c5a28e5b16b6e85070db05c47d1d3d338e28229a1897415b85ea992b9b0cec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.2/supabase_2.107.0-beta.2_linux_arm64.tar.gz"
      sha256 "11476bc35201a51255c7b65622512affcb1662e69882bf0a195d88f52059de77"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.2/supabase_2.107.0-beta.2_linux_amd64.tar.gz"
      sha256 "d7c2da6c362ccd4bcecee9aef4fa389d55e283e8d00f35e44d0e8e1b2ec1be54"
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
