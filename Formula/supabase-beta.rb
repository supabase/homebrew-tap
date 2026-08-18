class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.21/supabase_2.115.0-beta.21_darwin_arm64.tar.gz"
      sha256 "f2944fc058864edf212410be9aa8631e153d9a9af8c10e1ba3cae6ce2e45b655"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.21/supabase_2.115.0-beta.21_darwin_amd64.tar.gz"
      sha256 "205fa470a666ae207864c56cd45a91cb2ae0f72ed305069ca2da9bef30bf730e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.21/supabase_2.115.0-beta.21_linux_arm64.tar.gz"
      sha256 "15d8ee22bd4471ce8ce62f093c6d8bef27b69256b80a2a4faaa1f6c034266b57"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.21/supabase_2.115.0-beta.21_linux_amd64.tar.gz"
      sha256 "dfebdd1cf1e1ffa08cc3ef44668a927864f9522ddd3a7c153ed5c6aa0bfc7392"
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
