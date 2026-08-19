class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.5/supabase_2.115.1-beta.5_darwin_arm64.tar.gz"
      sha256 "3ffcb74f167feec5068eacc8d996d1c7dacdac7dd7e1e5dd6e0d2f3def0883e7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.5/supabase_2.115.1-beta.5_darwin_amd64.tar.gz"
      sha256 "8ee186868f4b744fd484e9a069208e52dd9529fe8e32ad8406eb2182b89968e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.5/supabase_2.115.1-beta.5_linux_arm64.tar.gz"
      sha256 "73bbacb3115794673986461f505ce75728bc642232106b462cfea344d972727b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.5/supabase_2.115.1-beta.5_linux_amd64.tar.gz"
      sha256 "2f2954b6b5903a6c8c5fa0c5a2a80a5d36dca7266017b185200b75630d5559e9"
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
