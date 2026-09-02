class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.5/supabase_3.0.0-beta.5_darwin_arm64.tar.gz"
      sha256 "63e9913fe3bf14079cd8fdb9ae505e939b7c6065c1730044b9382f04dbfa40c7"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.5/supabase_3.0.0-beta.5_darwin_amd64.tar.gz"
      sha256 "c870da5bfe6ab3cb2ef4e976b7ce4a04215fb16d072aea42e893305218968487"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.5/supabase_3.0.0-beta.5_linux_arm64.tar.gz"
      sha256 "582976cdd9e7f8ff2366105e8b58bd78b959eb24b057d9f1027b0d7b960fce7f"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.5/supabase_3.0.0-beta.5_linux_amd64.tar.gz"
      sha256 "c81514033df50b65092cd5b602645a757afb4de30d8532eefbf7fde2cde9ee70"
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
