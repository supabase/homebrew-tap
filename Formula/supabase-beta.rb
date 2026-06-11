class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_darwin_arm64.tar.gz"
      sha256 "218407a38881827f25f29c67d2d9fa7447f350a566d6083962b540b4a12f6c9d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_darwin_amd64.tar.gz"
      sha256 "124f6d0d7589867d502408a2a5b928b41fdbaeac2a14134bd0676f04d9b6ede7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_linux_arm64.tar.gz"
      sha256 "b25e1e2004b0f34754a27e4a9bc29dd2256c74678b9a3771b5735f392c15ce28"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_linux_amd64.tar.gz"
      sha256 "aa8cc77a7539575499db2315b7f24ab13de3e24069e010d6781cbb8001003b09"
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
