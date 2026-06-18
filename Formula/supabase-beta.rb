class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.4/supabase_2.108.0-beta.4_darwin_arm64.tar.gz"
      sha256 "d48ac2bbd3c98554f2d388c2ad236f71b829adefeec1cc92c4e1033970881ae7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.4/supabase_2.108.0-beta.4_darwin_amd64.tar.gz"
      sha256 "1e4ae118169eeb6d43dc8f753f9855089e1dd6c5f4f7517e20a77c2f751ddc0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.4/supabase_2.108.0-beta.4_linux_arm64.tar.gz"
      sha256 "6a6d358a598eb39c147b3eb71f4b37ffaa39fec68fcc3d0fac18615189cf97ae"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.4/supabase_2.108.0-beta.4_linux_amd64.tar.gz"
      sha256 "64bbdc672f0da1c4032da16517075e3c56a78b10e437554e6ae38d42ece9acd2"
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
