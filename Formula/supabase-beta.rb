class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.1-beta.1/supabase_2.103.1-beta.1_darwin_arm64.tar.gz"
      sha256 "2c4dcb219fd3463e11e102377253e406287efcd8f551d4b2e81138efe52adaa7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.1-beta.1/supabase_2.103.1-beta.1_darwin_amd64.tar.gz"
      sha256 "2d50363f729d3cc4e4980c42b0cd616a51603d71025b3f157b179d8f8ec795d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.1-beta.1/supabase_2.103.1-beta.1_linux_arm64.tar.gz"
      sha256 "1b11dc0f2ee8e25bcf7f0f0599c4e421400896941a855cc3273f5883f950c96d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.1-beta.1/supabase_2.103.1-beta.1_linux_amd64.tar.gz"
      sha256 "ab59184303f94cf394d2421ee72fe12077fed0aad1a99219b55df7390f79432c"
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
