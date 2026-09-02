class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.9/supabase_3.0.0-beta.9_darwin_arm64.tar.gz"
      sha256 "2c4afe6e7b9486d1504b1c8fc10dd99e4545b8a886914c638e66d1e09f05c806"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.9/supabase_3.0.0-beta.9_darwin_amd64.tar.gz"
      sha256 "d10748c02ebe67d1ce715af9b6ea3155f1c5237088039d603318b258d60fd7ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.9/supabase_3.0.0-beta.9_linux_arm64.tar.gz"
      sha256 "42eca32402c714981169a1b0d54f54eebcbef1b28079c68af43d56366962bd5e"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.9/supabase_3.0.0-beta.9_linux_amd64.tar.gz"
      sha256 "00449f842e8005c2650a0d214ae6c7b1c417461f736b8113d41b0abe797eb52b"
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
