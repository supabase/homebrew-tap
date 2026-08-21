class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.12/supabase_2.115.1-beta.12_darwin_arm64.tar.gz"
      sha256 "b917a06568e55240a3459751a21a4ee935c1c662b079107b27649405966df57f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.12/supabase_2.115.1-beta.12_darwin_amd64.tar.gz"
      sha256 "5829ea17f80b7b2dbc9055aee65bc7313f8eb0ce39ad41ef37d5a34245cf17bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.12/supabase_2.115.1-beta.12_linux_arm64.tar.gz"
      sha256 "9df01a05f55635a82116ac2b7fd07daabfb8479faaf94c3ad7a0960a38928e98"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.12/supabase_2.115.1-beta.12_linux_amd64.tar.gz"
      sha256 "193bff9412c62a524828dafdd25edabc410cd4f1228068f8fc8892a772b80dd9"
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
