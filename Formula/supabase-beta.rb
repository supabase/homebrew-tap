class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.12/supabase_2.106.0-beta.12_darwin_arm64.tar.gz"
      sha256 "fec99ec1183c630b62692c9db0e073c8ff86cc0095a8336e1f0bd400c70359a8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.12/supabase_2.106.0-beta.12_darwin_amd64.tar.gz"
      sha256 "aa6a1433f145773d9c2b5f34ddfb4317d17215e18af40d7586bb164d80ab235d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.12/supabase_2.106.0-beta.12_linux_arm64.tar.gz"
      sha256 "cd422e41682d9ea0ec9d2f1944f0b9e11e8df7d2f08c34739e20cb449bfebffd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.12/supabase_2.106.0-beta.12_linux_amd64.tar.gz"
      sha256 "dc2611d71c1db0dba7bfee316e7c2f69f4f5b2db9785aba543967238d87b05b7"
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
