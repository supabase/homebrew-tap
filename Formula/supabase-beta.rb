class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.9/supabase_2.99.0-beta.9_darwin_arm64.tar.gz"
      sha256 "be8ca680723770705c13315d41911e53e4fb1016a1564bf3a9e885fd8017d27a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.9/supabase_2.99.0-beta.9_darwin_amd64.tar.gz"
      sha256 "c49bbcbbc1e121aaf0d5c212cb9b8cf90c464aed34fcf6f949c82ecdbd8b2fe7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.9/supabase_2.99.0-beta.9_linux_arm64.tar.gz"
      sha256 "c4d70518626256f5c11455239d7d525cbcaa3e7ac05b2c305c322646709fba40"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.9/supabase_2.99.0-beta.9_linux_amd64.tar.gz"
      sha256 "687d091bca8e0e8b19c8134a34e78be53e75c7f32444b27ba6d199490ec24bfa"
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
