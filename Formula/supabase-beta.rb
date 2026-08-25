class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.11/supabase_2.116.0-beta.11_darwin_arm64.tar.gz"
      sha256 "c9b9280477c9b0bba5cb2254a06ffad51d9af2aa85d3e23d75b566ad94902295"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.11/supabase_2.116.0-beta.11_darwin_amd64.tar.gz"
      sha256 "5736709f51e5bba04cf83b8e6eebdf06c4d47569739c92181bf326079817b524"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.11/supabase_2.116.0-beta.11_linux_arm64.tar.gz"
      sha256 "733a4ae324893ee65960975e7f27f184ec3f0995893ee314d73c4b5aa89f55d9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.11/supabase_2.116.0-beta.11_linux_amd64.tar.gz"
      sha256 "cfead212ce9ca81361656888c3b93f542d6dfba663b26a3e045ee228d1cb7b24"
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
