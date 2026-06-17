class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.25/supabase_2.107.0-beta.25_darwin_arm64.tar.gz"
      sha256 "4a370e3d5e1e3769c38de9b1cd08ed5095f5eec9f14de86a976325eafd2b9219"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.25/supabase_2.107.0-beta.25_darwin_amd64.tar.gz"
      sha256 "493287c663913387fc5b4e84d14173b82c0e0fab7cc60cfaf750bb15f1dd61c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.25/supabase_2.107.0-beta.25_linux_arm64.tar.gz"
      sha256 "cf049cf111d5c084b3108e2c1a7ce0ee9ceee0660dafa59e9388fba75a6ba9fe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.25/supabase_2.107.0-beta.25_linux_amd64.tar.gz"
      sha256 "a6205d5f52fde36eb7c3e770df152287ac2203e74c218fa4b57d0df4b7e0d5aa"
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
