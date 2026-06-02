class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.2/supabase_2.105.0-beta.2_darwin_arm64.tar.gz"
      sha256 "1e73c5353e9f03372eb3c3f04572702127534fa1a4c0e6dd61a3443afd2da872"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.2/supabase_2.105.0-beta.2_darwin_amd64.tar.gz"
      sha256 "7e19377213a51db5a031266dc9b44ac408c2134a58ea1fcf5c279e61464c183f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.2/supabase_2.105.0-beta.2_linux_arm64.tar.gz"
      sha256 "e1ba8826a34c712999c998881fefce04edfa09a1fac29dd38c996dd33f775e20"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.2/supabase_2.105.0-beta.2_linux_amd64.tar.gz"
      sha256 "b9b91875aa7201145ec14faa20b3693fb10ec0bbc71a8947e54dd2e3a7632426"
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
