class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0/supabase_2.109.0_darwin_arm64.tar.gz"
      sha256 "be519fb90ef44f75c647abf4a9bd49f9b831014b5791ea623086b9df89f1b114"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0/supabase_2.109.0_darwin_amd64.tar.gz"
      sha256 "b31e3f84e4832cc6f8a49a4f5f7c1a55c45bb2da8c9442625aded2c7154d89fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0/supabase_2.109.0_linux_arm64.tar.gz"
      sha256 "7ea2fadb3a5590f54dafcd245fe56c465a03734028b8a380e27aeedc319531f2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0/supabase_2.109.0_linux_amd64.tar.gz"
      sha256 "d96c1ca0ef1f89582f6f001c306547d709644d35fa298c08600323d4eb9fdcf2"
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
