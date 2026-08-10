class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.5/supabase_2.114.0-beta.5_darwin_arm64.tar.gz"
      sha256 "ba4a9f16eaa141826df4635956d467ac2dd6332670fd9f9b04dd44006d25bda3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.5/supabase_2.114.0-beta.5_darwin_amd64.tar.gz"
      sha256 "64644694d6f3bc19bc14f6c7f9ab9ce600f4824beeba34fead4189bea1eed8b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.5/supabase_2.114.0-beta.5_linux_arm64.tar.gz"
      sha256 "21c241ce9b62baeaf1b4a86b8a05b5c1e40b68ef4043bd04406053ba5e5473cf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.5/supabase_2.114.0-beta.5_linux_amd64.tar.gz"
      sha256 "4f84d609f572e1a7fdf11bd3a28ea82de145e84b809b4e3f796b5ab4891028cd"
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
