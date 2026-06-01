class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.3/supabase_2.104.0-beta.3_darwin_arm64.tar.gz"
      sha256 "6f67e9584f653c23095974523ce1b352aab41bfaed96f223e3a8bb7b2ba96743"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.3/supabase_2.104.0-beta.3_darwin_amd64.tar.gz"
      sha256 "b3e7ae949b69157bdf0dc23532ed06e65fc2ff1ef181e689c19943f2dc7a86d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.3/supabase_2.104.0-beta.3_linux_arm64.tar.gz"
      sha256 "b564f74496059f6ca16989174e89f5a8c68e99b3d861c57013e5c327443b8f8b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.3/supabase_2.104.0-beta.3_linux_amd64.tar.gz"
      sha256 "a476b602930ce0bd25ba046bc571dcffd3cb05fa61dcf803b54850e7cc2f3f97"
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
