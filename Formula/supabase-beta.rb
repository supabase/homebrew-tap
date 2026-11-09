class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.29/supabase_3.1.0-beta.29_darwin_arm64.tar.gz"
      sha256 "8a08a326815e461c9815bf47da7d4c297c75bc22eb6adc8f4ce8127c71317d18"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.29/supabase_3.1.0-beta.29_darwin_amd64.tar.gz"
      sha256 "a63c76597237962b549b3cccb42244e5b5cea1346f1b5e49b3e1b6c22b885c26"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.29/supabase_3.1.0-beta.29_linux_arm64.tar.gz"
      sha256 "3dd1132d2e6e2616abb6e5512e2ad09e019ffcc61c6e3ca727d3be018d1da5ad"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.29/supabase_3.1.0-beta.29_linux_amd64.tar.gz"
      sha256 "133dc8a3a8967a123d4c51ffdb825b516d4c9f9162aa87cd62723e93a29acea6"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
