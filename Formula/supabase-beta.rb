class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.20/supabase_2.108.0-beta.20_darwin_arm64.tar.gz"
      sha256 "7f65a63353491c7eaaa6dbfe82b45c78cf0a960c22319caed6208700a2b41785"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.20/supabase_2.108.0-beta.20_darwin_amd64.tar.gz"
      sha256 "9a765dc02900ef39c3e933fe1fd88a44c4ac20c79aea90fd7a11546415cf162f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.20/supabase_2.108.0-beta.20_linux_arm64.tar.gz"
      sha256 "1a94af51c2461b1a26817b1ca6b8b7d5e9468e64a693b7c6366a071ed123681c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.20/supabase_2.108.0-beta.20_linux_amd64.tar.gz"
      sha256 "cffbcfb477b302fe12d702245e85a4b34c5b39970019203486d465921f1e3052"
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
