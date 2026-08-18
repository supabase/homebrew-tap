class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.2/supabase_2.115.1-beta.2_darwin_arm64.tar.gz"
      sha256 "ac52281461c02e5826bf3b0aab98f70958518b161898f98a9eb1c8a3340b3409"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.2/supabase_2.115.1-beta.2_darwin_amd64.tar.gz"
      sha256 "7d274ffaa31f0a0cbf8bea17e586b28c4162bf4fc6b87e2bdfa964c0c9491143"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.2/supabase_2.115.1-beta.2_linux_arm64.tar.gz"
      sha256 "48e2376e3e43d700d85e453627101bd82e8825e3cb9dc716a22095fcabf731fb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.2/supabase_2.115.1-beta.2_linux_amd64.tar.gz"
      sha256 "a9e5cf266d4aa713502dbf6eafa76bbf21cc64d60406789d866070e8133908e7"
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
