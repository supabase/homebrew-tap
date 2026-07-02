class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.6/supabase_2.109.1-beta.6_darwin_arm64.tar.gz"
      sha256 "4687ce32df786018c5afb1f0327b0b10a1c7488463a9eb5f9cb0d82cfb30edea"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.6/supabase_2.109.1-beta.6_darwin_amd64.tar.gz"
      sha256 "71ee0f6a06b102790fb2db05644a12db820b09da55ee6066c62b298f4fba02b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.6/supabase_2.109.1-beta.6_linux_arm64.tar.gz"
      sha256 "d8fd11082c08aeffe1f7754487e1ff96ee367368ca79e614c4427a5d76e00f3f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.6/supabase_2.109.1-beta.6_linux_amd64.tar.gz"
      sha256 "cf464ec0e368e10ccb93bf992f95be52e09fccb679aa07174d72ec0f155e057c"
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
