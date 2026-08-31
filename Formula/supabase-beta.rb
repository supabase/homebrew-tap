class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.12/supabase_2.117.0-beta.12_darwin_arm64.tar.gz"
      sha256 "82a20c5734ad908f3f6686bda1620775e1cc9ab51f0a291a8c464e873f10bb91"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.12/supabase_2.117.0-beta.12_darwin_amd64.tar.gz"
      sha256 "c91784ee8474b727c26f9c2fd2950e6750b80e7bd875c8c7d81d10f20f1020a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.12/supabase_2.117.0-beta.12_linux_arm64.tar.gz"
      sha256 "828c4833d74e080dd8bfc6e5bee9a3c44d73ab12ba09243666a2d5ec0ba4cecf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.12/supabase_2.117.0-beta.12_linux_amd64.tar.gz"
      sha256 "f0f3fe57b8636b16e8c11738b33f204ffa1d90296332edc4c524a074a7b071bb"
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
