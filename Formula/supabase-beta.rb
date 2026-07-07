class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.2/supabase_2.110.0-beta.2_darwin_arm64.tar.gz"
      sha256 "9d375bc3bfaff0b1afa5a7c130b5a53ef40b70d50455feea76acae3a6e90f35f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.2/supabase_2.110.0-beta.2_darwin_amd64.tar.gz"
      sha256 "9e5fcd4e37ad331973b532bbcc86ed7148bfcc17049cbb7559fb13941796e021"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.2/supabase_2.110.0-beta.2_linux_arm64.tar.gz"
      sha256 "fff9aad4bbe9e0d65c37d7417eaf4c2957e5873dd03b22dcadc0a00df435e52e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.2/supabase_2.110.0-beta.2_linux_amd64.tar.gz"
      sha256 "6c85f6d669418ba381df341fd3109f3bec39dbd4096652535c9a58dbbc169c2a"
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
