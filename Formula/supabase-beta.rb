class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.5/supabase_2.118.0-beta.5_darwin_arm64.tar.gz"
      sha256 "f74d47394b6b02a5ee83039e9f1774db81453661ecae6ebbf114e8592a45fac3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.5/supabase_2.118.0-beta.5_darwin_amd64.tar.gz"
      sha256 "b8b95ef6747d243b25852dd87ca5d2d313a50c723e71f2a8378d32cdfcfe6f4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.5/supabase_2.118.0-beta.5_linux_arm64.tar.gz"
      sha256 "630ea182ae8ab6efdfc3798b73987f883db20495b26bbb7fcddc5fd887d03e95"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.5/supabase_2.118.0-beta.5_linux_amd64.tar.gz"
      sha256 "153d98328a20e7689c6726d60b9885db1f42321ea8ce39b0b5482a710218173d"
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
