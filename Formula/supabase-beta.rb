class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.14/supabase_2.110.0-beta.14_darwin_arm64.tar.gz"
      sha256 "4c0eb61562b5ff1643f8ae5051e7cd14ce02e4d9da156bfb4e301e380873f94e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.14/supabase_2.110.0-beta.14_darwin_amd64.tar.gz"
      sha256 "13e9fc398aa39f10cd8bf1addc88e824bb042fd6a849cb87c2ee834aeca4178f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.14/supabase_2.110.0-beta.14_linux_arm64.tar.gz"
      sha256 "e06eed8c6b4f683cdb9264539d795a63c8b4fc6626046726ea74969d1eb9e7ca"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.14/supabase_2.110.0-beta.14_linux_amd64.tar.gz"
      sha256 "c5df87278b96f5f54797107fb9538ee931a5e192cf235ede2e0feb5eed034ea9"
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
