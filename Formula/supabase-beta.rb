class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.14/supabase_3.3.0-beta.14_darwin_arm64.tar.gz"
      sha256 "28faacf53c77f3ad31107db5b79463987007f8ec96001452ee6ec8e5dae409ca"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.14/supabase_3.3.0-beta.14_darwin_amd64.tar.gz"
      sha256 "872702c71b3ca92823a101cbb92284eb700c15ca6ed5ced90f4f60d831dac55d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.14/supabase_3.3.0-beta.14_linux_arm64.tar.gz"
      sha256 "5f490844194c3fcae89a12fc3663ab11b242d7860b9584a269d0142b2de5f901"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.14/supabase_3.3.0-beta.14_linux_amd64.tar.gz"
      sha256 "30925bb5f28319473ad70cda9b53fd510375615cfc2136365f53c0f93245b426"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
