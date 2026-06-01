class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.8/supabase_2.103.0-beta.8_darwin_arm64.tar.gz"
      sha256 "57f89229fabca1dd78f94eb80b66c0853b286f4d5193e4c5eef4a3c99c823aba"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.8/supabase_2.103.0-beta.8_darwin_amd64.tar.gz"
      sha256 "8636038175a820a74c2dc6ddc7cdb6bed7319bc2d12a442a5284060908af7f97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.8/supabase_2.103.0-beta.8_linux_arm64.tar.gz"
      sha256 "fa4f19e1fd0aae37d1e05225e7feb437e3b12828232df6240c167784b9b8383c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.8/supabase_2.103.0-beta.8_linux_amd64.tar.gz"
      sha256 "af71cc877f8a7c4d3ae6dde7d3abb18084350be56f92f4955e5dd8138ec1e4c1"
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
