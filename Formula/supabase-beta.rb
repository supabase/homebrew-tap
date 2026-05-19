class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.1-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.4/supabase_2.100.1-beta.4_darwin_arm64.tar.gz"
      sha256 "e5b56aac6870fca080c2bba5d1ed82f708d9307580cda62a2dfbea4ef39dcad0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.4/supabase_2.100.1-beta.4_darwin_amd64.tar.gz"
      sha256 "4f14326a66d075ea52231a0765811eee93482f35716fc9f6a8e052e6c2b10825"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.4/supabase_2.100.1-beta.4_linux_arm64.tar.gz"
      sha256 "04af0d7d3b8cd8dd4679caed849e6a12a1d9125e86eb62fb46412d7dd11bdcbe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.4/supabase_2.100.1-beta.4_linux_amd64.tar.gz"
      sha256 "b07bf8d3e968bcfedde3316777de1eaf3bca91b39cb12ac1c38d166a247b66c1"
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
