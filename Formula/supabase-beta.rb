class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.14/supabase_2.115.0-beta.14_darwin_arm64.tar.gz"
      sha256 "66b14fa0f6b5ecbaaf22c0d48a1598f62de31123b7e61aac6ff1cacd9e61309d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.14/supabase_2.115.0-beta.14_darwin_amd64.tar.gz"
      sha256 "d2420800a73110bf3947a00cea8954e5a1574eb4bf2bb225a42cc39a89237254"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.14/supabase_2.115.0-beta.14_linux_arm64.tar.gz"
      sha256 "595019c1e497deb431488fc49f8018796c8fccf33d33876b6ccc45925777cdcd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.14/supabase_2.115.0-beta.14_linux_amd64.tar.gz"
      sha256 "6123daff93363f24ad3df3741755048c4343a4ccfec22a1e011a626fe49d2e20"
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
