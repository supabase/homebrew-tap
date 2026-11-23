class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.4.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.1/supabase_3.4.0-beta.1_darwin_arm64.tar.gz"
      sha256 "78717fa132c8fc07761411ab151fbfc0509b0bed2cbee8b8003c3c45a77eebfa"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.1/supabase_3.4.0-beta.1_darwin_amd64.tar.gz"
      sha256 "b1e1f64c2e1077bdb1d797a28e6c4615570a61414482d63520cd80fae940b4ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.1/supabase_3.4.0-beta.1_linux_arm64.tar.gz"
      sha256 "6bf9535995d4cfd9ff4225f6a30a07b82d2e4d414230d8cbeca927533390398a"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.1/supabase_3.4.0-beta.1_linux_amd64.tar.gz"
      sha256 "a04c7d52b15040fe76621dbe6cfc3b95b85c1dc47d7e881f66ea2a4033aa0049"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
