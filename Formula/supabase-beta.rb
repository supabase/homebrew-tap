class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.1/supabase_3.3.0-beta.1_darwin_arm64.tar.gz"
      sha256 "27a95dc030dff889d2be6394eda66a894829cb69640a671d69e53ceddfb4b71f"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.1/supabase_3.3.0-beta.1_darwin_amd64.tar.gz"
      sha256 "f3bbbb5a3a8acad8976622826123cd97d358c6d440cda35e1d2b46d82983c2fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.1/supabase_3.3.0-beta.1_linux_arm64.tar.gz"
      sha256 "c1fafd00713a8472c45407e50b7ecf9cef787dd58ef4399f3b92fe2e57b85ae0"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.1/supabase_3.3.0-beta.1_linux_amd64.tar.gz"
      sha256 "dd8e3aabcbe2d501dfee0d573b418a62309809c6181bf6956ed52936390482f8"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
