class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.2/supabase_3.3.0-beta.2_darwin_arm64.tar.gz"
      sha256 "c368b68c72afdc478011e0c769e776eae16128c56f6e3f7a9af97d8be568eeed"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.2/supabase_3.3.0-beta.2_darwin_amd64.tar.gz"
      sha256 "e0d3c20119b7effe8960dd64d0c7ab61fcf8d481ee2602993068b27afaa338be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.2/supabase_3.3.0-beta.2_linux_arm64.tar.gz"
      sha256 "c53336dad1689b54b5a1e2a0480047323380debf1502d91c230a64cc0babe673"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.2/supabase_3.3.0-beta.2_linux_amd64.tar.gz"
      sha256 "be05817e44371dc9ced0507806571e6f57ece0e7e1c5ec38d11a9245775b6ac1"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
