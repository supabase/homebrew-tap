class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.16/supabase_2.102.0-beta.16_darwin_arm64.tar.gz"
      sha256 "919b13ccacec00670e94fd8c7ede89ee280b1c9a89b1f001349187c093444acc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.16/supabase_2.102.0-beta.16_darwin_amd64.tar.gz"
      sha256 "dfa86fc4fd7eeeb75f8a566a89621dbe9797a6b8c87ad294338d2429cf828e35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.16/supabase_2.102.0-beta.16_linux_arm64.tar.gz"
      sha256 "1d9520ddab0bd6ab2e8fe786e9ca9761eff3b63aaa7662ebc4a518f4feeb79a8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.16/supabase_2.102.0-beta.16_linux_amd64.tar.gz"
      sha256 "9890ee0ef04a394b65245cc97ba9d09eb31bad88b3df13c6bf8a4f8ab82a4593"
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
