class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.2/supabase_2.103.0-beta.2_darwin_arm64.tar.gz"
      sha256 "e87a3438ae969e738f123ce47ef03abc7e586cbdf8b7ce5838184af7aa373082"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.2/supabase_2.103.0-beta.2_darwin_amd64.tar.gz"
      sha256 "477069a9e88fdcd1a994acecd61382a9f437ef7d11989c830194e1810c8afcee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.2/supabase_2.103.0-beta.2_linux_arm64.tar.gz"
      sha256 "15d6dd98880a3440d473158e91d649a97bcd98b762c9b12145d310d9dfb67e3e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.2/supabase_2.103.0-beta.2_linux_amd64.tar.gz"
      sha256 "32e94c9bf4b624d907e5ddad7c8f6b65bff677604973b33fdd42d2c697f4226b"
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
