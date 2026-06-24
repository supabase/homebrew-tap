class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.30/supabase_2.108.0-beta.30_darwin_arm64.tar.gz"
      sha256 "1c618c0b7dbe6a6cfee0732130fa4e979ed700c191e7275b1b234aab72856006"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.30/supabase_2.108.0-beta.30_darwin_amd64.tar.gz"
      sha256 "abfc086109c631c0ad04e58da4c72c5f4e9109a979f64ee2ce9c05e1b9373fb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.30/supabase_2.108.0-beta.30_linux_arm64.tar.gz"
      sha256 "dddcb14ff967c62ed9d48288b7266fe3b0b5e9e1ca32669950018fc267e3d27a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.30/supabase_2.108.0-beta.30_linux_amd64.tar.gz"
      sha256 "c26159214727da6a543f13fc096c1f67c5688a7360ab4f0215d20a7344401b64"
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
