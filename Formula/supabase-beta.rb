class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.3/supabase_2.111.0-beta.3_darwin_arm64.tar.gz"
      sha256 "1524de4afcd2d83f6e72bf4da7e050ae534ee7d6444a37f56118240562544f53"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.3/supabase_2.111.0-beta.3_darwin_amd64.tar.gz"
      sha256 "671f409cb1b6bb973fb9bb0493c983d8b077c4982205de11685eb8f96a0b27e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.3/supabase_2.111.0-beta.3_linux_arm64.tar.gz"
      sha256 "6e6f4bc32146c0f4adc1c6d652bff85969bd24602963c0ef39ab2788117066f6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.3/supabase_2.111.0-beta.3_linux_amd64.tar.gz"
      sha256 "afd9b26f4ee25d8b24da912f99e652f7c21b50a57f12919ade6162454cd57d35"
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
