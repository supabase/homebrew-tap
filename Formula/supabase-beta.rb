class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.12/supabase_2.107.0-beta.12_darwin_arm64.tar.gz"
      sha256 "fb906cf4e1d01de91f8b5783d285f5a01637b5e8b60e42d8297b437c49fa1916"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.12/supabase_2.107.0-beta.12_darwin_amd64.tar.gz"
      sha256 "2d3d9adf824347297e0f9807ae6b94f2b2e50cf286e5c74fd09617a141c3ca62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.12/supabase_2.107.0-beta.12_linux_arm64.tar.gz"
      sha256 "cb02aca3bf2cc21bef748ebcc79e9f7a2491e29d9102782e831123fc7bd4195b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.12/supabase_2.107.0-beta.12_linux_amd64.tar.gz"
      sha256 "1c050d23d5278feabe47c2187c57f143229a83274b9146e45384a966eb68d01a"
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
