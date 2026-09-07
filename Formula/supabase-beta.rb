class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.1-beta.2/supabase_2.117.1-beta.2_darwin_arm64.tar.gz"
      sha256 "72d214dbd7dfdc7e3f32f24d76b7738e43b80687d408b6e6830b86a75d3cb9b8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.1-beta.2/supabase_2.117.1-beta.2_darwin_amd64.tar.gz"
      sha256 "30bf74dfb39ca1cf062991a8f6a4738aaf9bd4f1fbc2274516f1e4df408df775"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.1-beta.2/supabase_2.117.1-beta.2_linux_arm64.tar.gz"
      sha256 "6179e2ed2530ca3eac255ee22da624f8a846ad9dc7cc73fc2d447a572c7a2e45"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.1-beta.2/supabase_2.117.1-beta.2_linux_amd64.tar.gz"
      sha256 "8e966fe501c7a59790b6a0fe5e63b5c1ee501d6f0d7bf19b4905a72327a86374"
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
