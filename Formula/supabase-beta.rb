class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.18/supabase_2.117.0-beta.18_darwin_arm64.tar.gz"
      sha256 "e3b2091489c7be8953ba01031fca49065986f13401c1e85be105d080f0f573b0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.18/supabase_2.117.0-beta.18_darwin_amd64.tar.gz"
      sha256 "8c532a67f8a8e36b8f237a050b3c0732e1e7643e7efd8b41c2fd107157d3509b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.18/supabase_2.117.0-beta.18_linux_arm64.tar.gz"
      sha256 "fbc4ccaaf5bce9fb6a1462c81da3daef5a7aed7969fa679edfd69d4dbf5718ad"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.18/supabase_2.117.0-beta.18_linux_amd64.tar.gz"
      sha256 "11136b87d5c2bc09aaad7eb24a1a3609d953d76e574c966a766898cf8d25f551"
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
