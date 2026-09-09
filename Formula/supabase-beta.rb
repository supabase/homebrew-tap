class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.7/supabase_2.118.0-beta.7_darwin_arm64.tar.gz"
      sha256 "41b73b2755bb1c8474f2d815beed2d1998d6a0ee325435fdac8b5a56366277e4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.7/supabase_2.118.0-beta.7_darwin_amd64.tar.gz"
      sha256 "5ab9b81e4004a508a791919c1c1e97ce7c89f57a23615004e285e7903aaa7264"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.7/supabase_2.118.0-beta.7_linux_arm64.tar.gz"
      sha256 "ff2c49c04a91f234804a6ca416648f6d378b3e04531f02dac4ae5ad7a35156cf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.7/supabase_2.118.0-beta.7_linux_amd64.tar.gz"
      sha256 "c2d983702764168bb66d3807d5dfc7f5fa87773db8f99423ec251e7773135cdd"
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
