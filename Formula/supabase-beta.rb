class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.13/supabase_3.0.0-beta.13_darwin_arm64.tar.gz"
      sha256 "6fb9e27bf0a7f48e361de9e7fa89736c95ae4ce0564995d7dfb271cee9a4e4d4"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.13/supabase_3.0.0-beta.13_darwin_amd64.tar.gz"
      sha256 "9b22d77e1c85b8d97d239e8f9dba06aded6302d995943fd9e103edcc073a6001"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.13/supabase_3.0.0-beta.13_linux_arm64.tar.gz"
      sha256 "106f71a59a4eef364db1e72b9e4a50621cc2cebe818329f4f8c8ebdc2472d7e2"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.13/supabase_3.0.0-beta.13_linux_amd64.tar.gz"
      sha256 "5862977b8b1254193873bdf247d12b7d4ea2721fd2d53a0f299f645cb8f8cfd6"
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
