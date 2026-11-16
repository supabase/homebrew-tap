class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.17/supabase_3.2.0-beta.17_darwin_arm64.tar.gz"
      sha256 "401ebc3dc7b15169fd118085b7ee59a2cac61a70c8e92f572d31a0ccb1acb291"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.17/supabase_3.2.0-beta.17_darwin_amd64.tar.gz"
      sha256 "defff5f073acd07090ebe83fe648f124fe268b2cebd01a1f96ec4161878ba7b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.17/supabase_3.2.0-beta.17_linux_arm64.tar.gz"
      sha256 "965a2f44d8eb24171b9bc8c0fe8ef2a6de501c51f0811cea72ed6c6f5d6e43a5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.17/supabase_3.2.0-beta.17_linux_amd64.tar.gz"
      sha256 "f73cd80e2875d8eeb98b9e2771e6f0b0fd3a1e9f8b26f25cd781a7a00283e075"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
