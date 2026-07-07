class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.7/supabase_2.110.0-beta.7_darwin_arm64.tar.gz"
      sha256 "df0d82815da91bb261510ac74d930f44f565334b91c7717bfdd1a6ae55310dbf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.7/supabase_2.110.0-beta.7_darwin_amd64.tar.gz"
      sha256 "6cbe109cba04545f29c5c0178929aa4ad8bd5580f38438c997cb4c3ae3908c2f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.7/supabase_2.110.0-beta.7_linux_arm64.tar.gz"
      sha256 "a7067e5e875969d68dc0566890502624b8e69d93a99ba899ec626d72c4cbf476"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.7/supabase_2.110.0-beta.7_linux_amd64.tar.gz"
      sha256 "72bf57c6ab66e4cde2bcc2903ef7cea92408bc92dbafb134e1254b3f280cf188"
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
