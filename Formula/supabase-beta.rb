class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.9/supabase_2.112.0-beta.9_darwin_arm64.tar.gz"
      sha256 "7a2cbc48e2d7d991ad3d7f9d17d5e2ff15cb1d1f3ab33efd01d6a983c59ced9f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.9/supabase_2.112.0-beta.9_darwin_amd64.tar.gz"
      sha256 "75fd130341eb067f655533cd3e5227dbcbe108def151e21c116409966820f757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.9/supabase_2.112.0-beta.9_linux_arm64.tar.gz"
      sha256 "22bf3c06d6bd04a9e4fa8346e003cf6335c86ef728e7361db0fc79ee447a86c1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.9/supabase_2.112.0-beta.9_linux_amd64.tar.gz"
      sha256 "e5670b8b95aefec28357a58e83c1aae8f1e59f5b036d74c7444732492abf2333"
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
