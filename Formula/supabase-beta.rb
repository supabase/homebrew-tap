class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.11/supabase_2.111.1-beta.11_darwin_arm64.tar.gz"
      sha256 "39d53f7531f5ac84da3e2b9112a25bcf731feca382b979a9b3fe26c261fb08e3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.11/supabase_2.111.1-beta.11_darwin_amd64.tar.gz"
      sha256 "2a5da820c8b6ddd4584b1a11d19867a2aedabee6983cf1405ae6f4927a0a095e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.11/supabase_2.111.1-beta.11_linux_arm64.tar.gz"
      sha256 "2caf302302e904c1421d3d8af3d85613e6f79a4312c2681abadeda88db174371"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.11/supabase_2.111.1-beta.11_linux_amd64.tar.gz"
      sha256 "ad8dfa59098e2407bdaaf902cfe5de4d1d93d78d586198b9d2ceb82b3c100c6f"
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
