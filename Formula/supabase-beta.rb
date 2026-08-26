class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.1/supabase_2.117.0-beta.1_darwin_arm64.tar.gz"
      sha256 "7060910281561fecdad0c37862f09b60d44c4dc22aa4b66bd97664b8198efa79"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.1/supabase_2.117.0-beta.1_darwin_amd64.tar.gz"
      sha256 "97b514be268094f7610d87b13d4ae2d56c5b5796866ae5fdd044e48d0206c671"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.1/supabase_2.117.0-beta.1_linux_arm64.tar.gz"
      sha256 "982d866395fc243f0884f91aab7c2e1ed5794804dd6727f48d1b2a366e5181bc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.1/supabase_2.117.0-beta.1_linux_amd64.tar.gz"
      sha256 "b0442b8c2ea6f0034db82b814a6989115e30fe57d3b85d7078df6b7a10d67341"
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
