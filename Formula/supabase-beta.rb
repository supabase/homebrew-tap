class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.24/supabase_2.107.0-beta.24_darwin_arm64.tar.gz"
      sha256 "aa21251fd7087400af1d51a62d5d78462c66fc78140683b62f0efa7db6ae5eb4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.24/supabase_2.107.0-beta.24_darwin_amd64.tar.gz"
      sha256 "f0adf63c552e32c7945c8502d52ec9b9439a3daf1e2f09b476282bbf9f069de2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.24/supabase_2.107.0-beta.24_linux_arm64.tar.gz"
      sha256 "2c7b1c5c94e8ab1a1810e856a832b43e1b4222d2ec2b810d1f2fefd057d79964"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.24/supabase_2.107.0-beta.24_linux_amd64.tar.gz"
      sha256 "1670c524b2f8c49e2e0c1c2140cd29d6c6d982dcd272863a1c2869337acfe475"
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
