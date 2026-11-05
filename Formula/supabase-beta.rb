class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.22/supabase_3.1.0-beta.22_darwin_arm64.tar.gz"
      sha256 "a6ac55d1d62bb823d6c4fd0ffd74d2211b1cf552afa08d10aa07882c8a023700"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.22/supabase_3.1.0-beta.22_darwin_amd64.tar.gz"
      sha256 "a5167692fa5d7f0960f1d54ebcde5ad9e217846e8e340e739b5b3c8b767e4f19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.22/supabase_3.1.0-beta.22_linux_arm64.tar.gz"
      sha256 "5614755ad24d3ea128858ceccf73ccdd0b5c55ed52ab9a0919a4451de35163e7"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.22/supabase_3.1.0-beta.22_linux_amd64.tar.gz"
      sha256 "cf1593c56d8d51cb8b29f814f79354dd1684e78b73e59b0330911b838da19e24"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
