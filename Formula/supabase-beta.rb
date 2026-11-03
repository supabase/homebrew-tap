class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.8/supabase_3.1.0-beta.8_darwin_arm64.tar.gz"
      sha256 "77d2d15e0e78df9eb520e443532dc703a31dbe9589bb1ea9355716e7d53d937e"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.8/supabase_3.1.0-beta.8_darwin_amd64.tar.gz"
      sha256 "7e2b0aa631e563d1c8484b704d5344fbc798b76c38029cc777f0249fa0c7063d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.8/supabase_3.1.0-beta.8_linux_arm64.tar.gz"
      sha256 "ccc33899c4c7447a627423b72b6475142683238973d22f5b5e8d05fbcdae24bc"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.8/supabase_3.1.0-beta.8_linux_amd64.tar.gz"
      sha256 "a8e525a0ba7fe1eb4e3d7db208b33d321df451f92cd09758243b2c0ea4cc08f1"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
