class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.13/supabase_2.116.0-beta.13_darwin_arm64.tar.gz"
      sha256 "68952267d7f3994f98bc5fdf98b5ac60778b2140238dca49783a3c583610b7dc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.13/supabase_2.116.0-beta.13_darwin_amd64.tar.gz"
      sha256 "102b89d5161809eb2e4975cc82ab474e97459ec8fc69630f629c80e4f3d20517"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.13/supabase_2.116.0-beta.13_linux_arm64.tar.gz"
      sha256 "c06f91c25fed95ad6f31c38ae3e381f646e0ba532704fdcc56295f758ffab65b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.13/supabase_2.116.0-beta.13_linux_amd64.tar.gz"
      sha256 "9b34748efc0839d56a1f34706f7aa7f5b7a7ef1d9f9c5f1e7b57a4757fa6c689"
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
