class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.1/supabase_2.107.0-beta.1_darwin_arm64.tar.gz"
      sha256 "5ee4b08c036f27275f88910fdc9f2921046b3a34aa581211b47c8d867fe448af"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.1/supabase_2.107.0-beta.1_darwin_amd64.tar.gz"
      sha256 "5459ee9b1f069c8c990e16802d8a859214da7f56d6983e7f0f8ab87f5bb28d41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.1/supabase_2.107.0-beta.1_linux_arm64.tar.gz"
      sha256 "57066eadc4c9c74a34293d4d39d65cf81f655a19a5e85c6d52f95c89b3f2a193"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.1/supabase_2.107.0-beta.1_linux_amd64.tar.gz"
      sha256 "d94118615769276e12fc39a7316a7d4747b6d047d0600a6febdd24aad8d7d612"
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
