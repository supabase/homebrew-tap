class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.5/supabase_2.99.0-beta.5_darwin_arm64.tar.gz"
      sha256 "459745d58a8a97e311c0953f482b73e29263743a15e7b6160d91d11dfd8b993e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.5/supabase_2.99.0-beta.5_darwin_amd64.tar.gz"
      sha256 "c69c6d4a21bf06f5952463b2d8ca638ecd444597a5e70c2fa6a573d1abd52070"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.5/supabase_2.99.0-beta.5_linux_arm64.tar.gz"
      sha256 "ad5f417e4703baaf127da582dbe1b405b69cc2394a390e1eb648f8af0d67a9d9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.5/supabase_2.99.0-beta.5_linux_amd64.tar.gz"
      sha256 "72822ed9e30aa0ce8c40cfebc941086ec6bdcbc48e3fdb560ae8f12db4b1f98d"
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
