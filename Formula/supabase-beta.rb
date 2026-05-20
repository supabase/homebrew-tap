class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.2-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.2/supabase_2.100.2-beta.2_darwin_arm64.tar.gz"
      sha256 "852965341d267e9c0e53f8ae67e1813cc79257e23e7b9b452b1d278fe9fd2a57"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.2/supabase_2.100.2-beta.2_darwin_amd64.tar.gz"
      sha256 "39ef2beac69551baaa6429052c8afa9fbee03bac072fad8aa0bb947ab85f9ca7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.2/supabase_2.100.2-beta.2_linux_arm64.tar.gz"
      sha256 "ad29824fea25b47303ae8273c5bbf15f420830471e9500d761008536d404d674"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.2/supabase_2.100.2-beta.2_linux_amd64.tar.gz"
      sha256 "0586bc6fb991502f90dbfa718e9504ddb126a269bfbb8e77635fe908f55cc295"
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
