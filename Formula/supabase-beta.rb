class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.11/supabase_2.109.0-beta.11_darwin_arm64.tar.gz"
      sha256 "0b27debe7fe08f25da2a4ae9bcdb3d1b59e7fdacefa5cbaa9e7d039bc5e1b0bb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.11/supabase_2.109.0-beta.11_darwin_amd64.tar.gz"
      sha256 "153d902b47041e8b2ef1ad8b42314b0450987fd7fedd6631db52aa474ff73e5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.11/supabase_2.109.0-beta.11_linux_arm64.tar.gz"
      sha256 "56472f0499a8321aae60d8345a3c2078738262030fa818cf4a6e3af82710d96d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.11/supabase_2.109.0-beta.11_linux_amd64.tar.gz"
      sha256 "3354eee4871b9e8cf27e6d9abc6a67a275e8b8d63b112b6b0bab040cac8ae02f"
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
