class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.11/supabase_2.110.0-beta.11_darwin_arm64.tar.gz"
      sha256 "3f5108b84ce7cedbacd84a0cc97cb8451b2900cd56caeb7c84cb47359a6f96c5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.11/supabase_2.110.0-beta.11_darwin_amd64.tar.gz"
      sha256 "b0a0c6dfb73ddd0817919ad1b7015a0c66283b03be6e7e5337005ed24dbd7033"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.11/supabase_2.110.0-beta.11_linux_arm64.tar.gz"
      sha256 "c2702d2814ed2f97d34736516ddc9e3900fa3f884356a722b6a354e9cd97df3c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.11/supabase_2.110.0-beta.11_linux_amd64.tar.gz"
      sha256 "271d3b22871e62d5187456c5e03b50e7083551283827c48bf0975bbc724efcbb"
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
