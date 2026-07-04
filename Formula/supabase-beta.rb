class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.14/supabase_2.109.1-beta.14_darwin_arm64.tar.gz"
      sha256 "dc4f4258faa4eacca0aff4448f7c98f850c7cc82ad13a62215ba2217397441c7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.14/supabase_2.109.1-beta.14_darwin_amd64.tar.gz"
      sha256 "b3e521adba6e465d2e16c3672f22b43544e86112f7b2bb6189f65398663f9ec3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.14/supabase_2.109.1-beta.14_linux_arm64.tar.gz"
      sha256 "f19b96b87260a025f88547edc39d048c2c6f275d828710224a5c80239acc4473"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.14/supabase_2.109.1-beta.14_linux_amd64.tar.gz"
      sha256 "c03d069dcf31114aec6d02d2eb0fdf4efa14b6eb2f8a3890c7f2f6c55c1cc52c"
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
