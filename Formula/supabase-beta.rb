class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.2/supabase_2.115.0-beta.2_darwin_arm64.tar.gz"
      sha256 "b6b15489534f4eef68326ddad384907d0675b6b8357e418c748c1f84fe2a1bae"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.2/supabase_2.115.0-beta.2_darwin_amd64.tar.gz"
      sha256 "3c6af8b40938a310e0da1a84cf4163b43d398012af32e7f71e4cb1cf268587d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.2/supabase_2.115.0-beta.2_linux_arm64.tar.gz"
      sha256 "264ce8d09edcaf835926d186adf843889b6e324e6a9186450aa34c0890f1a58a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.2/supabase_2.115.0-beta.2_linux_amd64.tar.gz"
      sha256 "fec73dd93e65e367c83bdedc158152a8d111b88999b06c6dea164d6b5d85ade7"
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
