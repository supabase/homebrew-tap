class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.17/supabase_3.0.0-beta.17_darwin_arm64.tar.gz"
      sha256 "809ba55ab7c6e211c85da5abf8f93f623e1ec3b756dbe3f8a2456e7c066b08b1"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.17/supabase_3.0.0-beta.17_darwin_amd64.tar.gz"
      sha256 "11846e99f74a3eea4e6bbb0ae60cb6c7b83326505cb193961ee66dba195d57c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.17/supabase_3.0.0-beta.17_linux_arm64.tar.gz"
      sha256 "d910c9f072f6cf8a5b540f74c89372105342cb100c5ae8e01508b60913105e43"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.17/supabase_3.0.0-beta.17_linux_amd64.tar.gz"
      sha256 "71da3ffd70c702b98c1d96d9cde42c6598704ef6cd6b6e66e17c0bc09b804599"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
