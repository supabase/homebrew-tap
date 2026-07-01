class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.1/supabase_2.109.1-beta.1_darwin_arm64.tar.gz"
      sha256 "1acb321f04a823e92e2d57ef69f9e850b1b8b0c4f122cc98960e574bb4c0868c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.1/supabase_2.109.1-beta.1_darwin_amd64.tar.gz"
      sha256 "6d31da40f27e4977a65cc9b60f78d8543efcfa720abfcd801dea271969b8eb59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.1/supabase_2.109.1-beta.1_linux_arm64.tar.gz"
      sha256 "300575f72bd8e8fc461bf9cbaef99bb95527fe923295d38213df126486d378e1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.1/supabase_2.109.1-beta.1_linux_amd64.tar.gz"
      sha256 "49be2c4c6e21d02ad6e9b400ad6e3e78fce5216b6e26cf19591c4b15647f3724"
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
