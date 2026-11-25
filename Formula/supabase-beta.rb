class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.5.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.2/supabase_3.5.0-beta.2_darwin_arm64.tar.gz"
      sha256 "8e5c026c0b9126e4f8cb3282813bc500e5d38381d60d0413e55629ea08e305d5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.2/supabase_3.5.0-beta.2_darwin_amd64.tar.gz"
      sha256 "277abddb7fab4d54d6a450946063857ea0b958f1d91ae73c54a2d9588bff57a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.2/supabase_3.5.0-beta.2_linux_arm64.tar.gz"
      sha256 "8c19e67bd62eb89219bf9d4a321f6c792d8701b74bf357882b8d9b9bf9b685de"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.2/supabase_3.5.0-beta.2_linux_amd64.tar.gz"
      sha256 "941e39fe35eca9cde27bd129d2d887df804c8e36e45401497782ef5377179a5f"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
