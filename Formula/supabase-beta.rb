class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.9/supabase_2.109.1-beta.9_darwin_arm64.tar.gz"
      sha256 "77adf46fdf71661b5ca43f64f9193acf3088a0b89183d627822fed4fef1c462e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.9/supabase_2.109.1-beta.9_darwin_amd64.tar.gz"
      sha256 "db850ffd4400447b07a477317fdff7501ff42ea37356c17e986700be4fbd9cdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.9/supabase_2.109.1-beta.9_linux_arm64.tar.gz"
      sha256 "2a97a992c5656f2e5eaf3d782ff6dab5e3ed25dacd2b3615ec5458e56db4cffb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.9/supabase_2.109.1-beta.9_linux_amd64.tar.gz"
      sha256 "6c3b6fd77bf8455b097b769df7efe22d4a9b00ac9b61bbcc9cc56a68a372f922"
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
