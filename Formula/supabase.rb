class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0/supabase_3.1.0_darwin_arm64.tar.gz"
      sha256 "2bd2a45fd5cd9e45b6393cfd534651ac1dbfb78c8a311b7f48e14143594e7a26"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0/supabase_3.1.0_darwin_amd64.tar.gz"
      sha256 "7ddf0f4ba6e976bb08ce3141cc47cfbd00d7d37346e0a9b53ab1e95c6d0134e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0/supabase_3.1.0_linux_arm64.tar.gz"
      sha256 "e49b2ab2f4fb428f4e033174d6d9747dd93c95d1504142ba5090699b1ecd2563"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0/supabase_3.1.0_linux_amd64.tar.gz"
      sha256 "dbe9fd66771337fc198727da86b9d3551302f87a7091cd8781be2a4cd0c8ac4d"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
