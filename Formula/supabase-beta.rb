class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.1/supabase_2.110.0-beta.1_darwin_arm64.tar.gz"
      sha256 "a3a98c9100e7ca3decaf218eb1cb7584b45a7327be32b300ec606773db90c0a5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.1/supabase_2.110.0-beta.1_darwin_amd64.tar.gz"
      sha256 "e3b5b8219c909452f063f03bb0ad9dc62e531f7451ccae1239be46721e8c135b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.1/supabase_2.110.0-beta.1_linux_arm64.tar.gz"
      sha256 "fc07d7e47ee83260dde89165bc18041603e79d1842bec830451e08081d212699"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.1/supabase_2.110.0-beta.1_linux_amd64.tar.gz"
      sha256 "ab170bb40a00f21eaa88aa71441e7d5cf55a521d868ace9801cb4bc0ea811bf6"
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
