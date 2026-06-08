class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.9/supabase_2.106.0-beta.9_darwin_arm64.tar.gz"
      sha256 "d9fde23f8b6a197cbb8d7e9f0112624c03e6fb00927d5f3df79e111159ad6c69"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.9/supabase_2.106.0-beta.9_darwin_amd64.tar.gz"
      sha256 "46cfe890b4c2411e35b5941c93d37112534146a57fc5532944cf9da8700a8444"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.9/supabase_2.106.0-beta.9_linux_arm64.tar.gz"
      sha256 "1f68edbad9f2ae6053293085ac6788acdf2c56e500770fc7405831a98df15324"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.9/supabase_2.106.0-beta.9_linux_amd64.tar.gz"
      sha256 "bb0350561c42b426bd66c4facfde917c9c3784c52906a422641eb3851a663e5e"
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
