class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.4/supabase_2.115.1-beta.4_darwin_arm64.tar.gz"
      sha256 "c9b7e308f1ca8d9ee5ae338f2bebc261602e4ce7cb1467d0420c068c7189bae1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.4/supabase_2.115.1-beta.4_darwin_amd64.tar.gz"
      sha256 "2f0f7d3723244f06bea8a456218f1a103c14e62555a18a65abfee46b4839aea5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.4/supabase_2.115.1-beta.4_linux_arm64.tar.gz"
      sha256 "8b42c0f18cd8105da1d5b34e6c78e58108e71e9825a1c3cae81410c35d291eb0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.4/supabase_2.115.1-beta.4_linux_amd64.tar.gz"
      sha256 "52c3e053d827280b4ca3c986b7e8792bd3d11e36e7e9c464489efb5c5ed4d253"
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
