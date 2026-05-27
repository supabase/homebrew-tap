class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.12/supabase_2.102.0-beta.12_darwin_arm64.tar.gz"
      sha256 "ed48ab6a89aa44c43328f6d85f5851060be97cfa8f3e979dc3eef6f678c18ab3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.12/supabase_2.102.0-beta.12_darwin_amd64.tar.gz"
      sha256 "ad2e178924b50449ffc8ab0108acd54511a2d7d868297af5453b90923da17b39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.12/supabase_2.102.0-beta.12_linux_arm64.tar.gz"
      sha256 "711ecb04a5add8c83232b0214abc09c70dbccd6bdd7f016a2e464447196776d6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.12/supabase_2.102.0-beta.12_linux_amd64.tar.gz"
      sha256 "c574c422ab3b61c24c5f5cdb7f02f1610b0df52ce8cbd68f66dc8bbf3d379d01"
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
