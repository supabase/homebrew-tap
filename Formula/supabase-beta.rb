class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.5/supabase_2.102.0-beta.5_darwin_arm64.tar.gz"
      sha256 "80864725aab0cd861080666cc54fff152e4aa747b4a0256940de7028a4f73192"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.5/supabase_2.102.0-beta.5_darwin_amd64.tar.gz"
      sha256 "310807c8b0b89646275cd61243672af48229bb43e037cf9777626bb26e3c6a57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.5/supabase_2.102.0-beta.5_linux_arm64.tar.gz"
      sha256 "a17f39659abec5d74f8e6d5f8284da87a2a463adb784fb5d48676d87f266e28c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.5/supabase_2.102.0-beta.5_linux_amd64.tar.gz"
      sha256 "5165e71d28e3d0745f78b828e1ce41966ccd82fec40934bedd2229dfe258cdf5"
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
