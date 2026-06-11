class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.1-beta.1/supabase_2.106.1-beta.1_darwin_arm64.tar.gz"
      sha256 "f3bb178627ccb3d40ac41df75a8af7d086593e9279c44ffdf65a0abccbe0f351"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.1-beta.1/supabase_2.106.1-beta.1_darwin_amd64.tar.gz"
      sha256 "e097d5d802c194a2d3d45389347333ce195122e7a833101d98e55a04b0d75a75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.1-beta.1/supabase_2.106.1-beta.1_linux_arm64.tar.gz"
      sha256 "b86b3c768a70f8a7ee4d14a8f0a10c1a2c022ea4b41d7297116f16de071b3a6c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.1-beta.1/supabase_2.106.1-beta.1_linux_amd64.tar.gz"
      sha256 "7cbb5753c3b941954151a4fd1e413ede6d5524b75a29f587d4105471a2a6c5de"
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
