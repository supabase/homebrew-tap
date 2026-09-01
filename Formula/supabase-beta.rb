class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.4/supabase_3.0.0-beta.4_darwin_arm64.tar.gz"
      sha256 "7be558625184dd93e5da0f2295809a5ecfb46d6a5259c6a144ca02f4fb7bb533"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.4/supabase_3.0.0-beta.4_darwin_amd64.tar.gz"
      sha256 "0e18cae99500a71d01a5130f34073732874b772f88e0251e00558787d22802b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.4/supabase_3.0.0-beta.4_linux_arm64.tar.gz"
      sha256 "fd76935c152b3e489227717262dce2450a4f6b989eae017c517beb0685e7df9a"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.4/supabase_3.0.0-beta.4_linux_amd64.tar.gz"
      sha256 "e8a2331cb1cc4374caffd4670f4460861fe39d664f0ff788c832a4a38dc77e74"
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
