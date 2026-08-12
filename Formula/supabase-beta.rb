class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.14/supabase_2.114.0-beta.14_darwin_arm64.tar.gz"
      sha256 "c98f10f51594cabcc02dc4182acd5fa6e4b791a080d2a1b5a50067cff3ab6bbe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.14/supabase_2.114.0-beta.14_darwin_amd64.tar.gz"
      sha256 "72769e0dd8f23b713553276b1cd49b43aaa43ab025a8de36c1f7777d436bbe63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.14/supabase_2.114.0-beta.14_linux_arm64.tar.gz"
      sha256 "a93fe61d64029035f4b2dae61f61a28bacf4b22df02a2832a8326ee9273b3f1d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.14/supabase_2.114.0-beta.14_linux_amd64.tar.gz"
      sha256 "a68242a4d5722a455126ef3dec2445e7e6c9046a57afa5513ecbbf2d5d87d900"
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
