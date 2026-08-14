class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.5/supabase_2.115.0-beta.5_darwin_arm64.tar.gz"
      sha256 "80d344c0cfbb398c2972fa4750d51616163b2845279f58d030cf6eea96616628"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.5/supabase_2.115.0-beta.5_darwin_amd64.tar.gz"
      sha256 "cbafda1ec45fd56cd3a5691bcd889bbf9751212f7fa56bd648f4bc41bec5989b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.5/supabase_2.115.0-beta.5_linux_arm64.tar.gz"
      sha256 "5f487759f7f6c336c1831c300a93752e8a2a591033f2330176670cbdf8a3b974"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.5/supabase_2.115.0-beta.5_linux_amd64.tar.gz"
      sha256 "4bd40a35763f61afdea93b4c8592cad0f8980634b17b61250762c071be7bb1ee"
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
