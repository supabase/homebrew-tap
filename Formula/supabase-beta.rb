class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.1-beta.1/supabase_2.117.1-beta.1_darwin_arm64.tar.gz"
      sha256 "3fb7ad25dc814ee99407bc7ad03376881efee25feddecb5a0e2ed38e4eadf80b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.1-beta.1/supabase_2.117.1-beta.1_darwin_amd64.tar.gz"
      sha256 "da2592bb6b603feafbe4a677f1c6875b02c3b11b376aa37455ebc42e3d7007f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.1-beta.1/supabase_2.117.1-beta.1_linux_arm64.tar.gz"
      sha256 "84f5a2b37853305509dfa9d424397b9f7c3b1f9085f923a8fc42b8d585de6d89"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.1-beta.1/supabase_2.117.1-beta.1_linux_amd64.tar.gz"
      sha256 "09c736135e157ecb7df184edd0677861e885d427d3605f9657e1f624c5e2fa0a"
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
