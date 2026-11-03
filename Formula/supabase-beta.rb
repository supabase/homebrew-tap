class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.9/supabase_3.1.0-beta.9_darwin_arm64.tar.gz"
      sha256 "9a02eacf68e9ec6e3875c1c413d5d6741a47ca3254bf30d5e039ac91446450d2"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.9/supabase_3.1.0-beta.9_darwin_amd64.tar.gz"
      sha256 "707992537c1e4d6606fb1079a0073f929b3e089616098a7c6a304f5d9c4fbcb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.9/supabase_3.1.0-beta.9_linux_arm64.tar.gz"
      sha256 "904b430fa5d8ac51794dbcd109c5de8b89fa7b42b7896b8c163d7aa429d91b3e"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.9/supabase_3.1.0-beta.9_linux_amd64.tar.gz"
      sha256 "552636fcc1489032a4e6d6586f91c653a529391295deb16ed21241be4fdfd314"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
