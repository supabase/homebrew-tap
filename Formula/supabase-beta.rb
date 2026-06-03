class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.6/supabase_2.105.0-beta.6_darwin_arm64.tar.gz"
      sha256 "28ee3270076176b297c004d5afdc129ff71e1c1081bb4bacdcb81c46d287a2f3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.6/supabase_2.105.0-beta.6_darwin_amd64.tar.gz"
      sha256 "028ec945ecd0dd654481b631627e04ba49de27cbbb74e96c84f0791373285921"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.6/supabase_2.105.0-beta.6_linux_arm64.tar.gz"
      sha256 "04108b84e7df15f988beeecb8dd14cf0367cc203e6946ce10bc14b60d2776370"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.6/supabase_2.105.0-beta.6_linux_amd64.tar.gz"
      sha256 "ec55584f2c90201b10ec4068b1baadc575b5a2eab81ad2c885121001ac2a7c62"
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
