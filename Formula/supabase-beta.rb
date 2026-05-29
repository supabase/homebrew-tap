class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.2/supabase_2.103.0-beta.2_darwin_arm64.tar.gz"
      sha256 "2e178173c4316d5842cce919baa1c9d86e447d9796ffc8a35aa97d1ce83f0d8d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.2/supabase_2.103.0-beta.2_darwin_amd64.tar.gz"
      sha256 "745da8ad83e7f30e13522fab8cce0eb117ae45c5d87dea25d14569bf7687df9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.2/supabase_2.103.0-beta.2_linux_arm64.tar.gz"
      sha256 "8fe3899b52a25b3e2db0a852b5f7416e829f7606cced903abdf3e6a6dd7d5de5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.2/supabase_2.103.0-beta.2_linux_amd64.tar.gz"
      sha256 "49431b1c75dc831cac1336d558d4539d7a3d3ad9b0405bbba0886b203178a787"
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
