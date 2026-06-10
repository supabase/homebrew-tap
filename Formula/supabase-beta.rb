class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.19/supabase_2.106.0-beta.19_darwin_arm64.tar.gz"
      sha256 "db4d7afbad42852914cfb35577f29d864847d1a624e839e743aaf8893c762988"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.19/supabase_2.106.0-beta.19_darwin_amd64.tar.gz"
      sha256 "dff5bab2c90c02628fab52d907eed134a313ae32c8e705adebb11661a6a3c056"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.19/supabase_2.106.0-beta.19_linux_arm64.tar.gz"
      sha256 "da3e8c21e4db70800ffef5e6f0b413f0305dda4deb050de66ab6f5fdecb120eb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.19/supabase_2.106.0-beta.19_linux_amd64.tar.gz"
      sha256 "48dbce9617d475efca56f3baa98c834441b2ba49d867d56f11e99f6d1a994936"
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
