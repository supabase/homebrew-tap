class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.120.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.120.0/supabase_2.120.0_darwin_arm64.tar.gz"
      sha256 "3b8546cc61aeabab6fd1f68edc7f664ebdfa96bdd6a9b18d8d612708f430ae28"
    else
      url "https://github.com/supabase/cli/releases/download/v2.120.0/supabase_2.120.0_darwin_amd64.tar.gz"
      sha256 "4c6fd79d3feaab3ba404f18044e6abee09d73c39376491476cb64880b3822f46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.120.0/supabase_2.120.0_linux_arm64.tar.gz"
      sha256 "f1747691843837be981fba9f92bf30bf1ddb8cee937ba3806454325af12a8ffc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.120.0/supabase_2.120.0_linux_amd64.tar.gz"
      sha256 "7074584113aa00495beeac661c41fb09f1ddd0a483cd7333894b0d080086dc6e"
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
