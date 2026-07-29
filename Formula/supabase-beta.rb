class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.10/supabase_2.111.0-beta.10_darwin_arm64.tar.gz"
      sha256 "00eb60bc04d560a7d178664cb38ebae827432e6ad4501f415ba934491542f003"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.10/supabase_2.111.0-beta.10_darwin_amd64.tar.gz"
      sha256 "bbeeb24874167dde85a36af92c6467a94312ac5d0b47718e55f85608d65498a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.10/supabase_2.111.0-beta.10_linux_arm64.tar.gz"
      sha256 "7d4e2f3afe2e480ae83d656dd1ed8e17bd65506f4b7ce24c7df12d9cdd98cbd4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.10/supabase_2.111.0-beta.10_linux_amd64.tar.gz"
      sha256 "1af058931ddb702daef89a3aea08a4c2c401647b7637e286d25cd2374558226c"
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
