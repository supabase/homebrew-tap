class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.15/supabase_3.3.0-beta.15_darwin_arm64.tar.gz"
      sha256 "e1798b61dd3e52abd6db3f4fa123a26c7315e636e61869e56f93445100ee6335"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.15/supabase_3.3.0-beta.15_darwin_amd64.tar.gz"
      sha256 "0129eeb92b79ef9c7ffe8e55083b899e994fad2d4e8920ffccf348317f07f740"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.15/supabase_3.3.0-beta.15_linux_arm64.tar.gz"
      sha256 "791ed824fe0cd8c100c918ed6101da0c63f97131718d802447f2fd72288da442"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.15/supabase_3.3.0-beta.15_linux_amd64.tar.gz"
      sha256 "58953d72c9c6787bfcc4a629613a73f9129d212f41b709f9bddc1040c9128eaf"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
