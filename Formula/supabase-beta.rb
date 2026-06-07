class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.7/supabase_2.106.0-beta.7_darwin_arm64.tar.gz"
      sha256 "f2ccb6aa29c7c87af6c20c45142c11d5be071ede3edaab1b494d206d6a8608fe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.7/supabase_2.106.0-beta.7_darwin_amd64.tar.gz"
      sha256 "5453f64e83cd3820f2e6e08265fc925a59d1f5305c359a51ec796d8c7521ec01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.7/supabase_2.106.0-beta.7_linux_arm64.tar.gz"
      sha256 "b09ec6837759a7f5512a07e24de6ae2f073b82e742c595a60f7f8f6df07b0b84"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.7/supabase_2.106.0-beta.7_linux_amd64.tar.gz"
      sha256 "4babec91381235afe4f1e3198ef27d8117b56dbef6812df7307cde80d8be4358"
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
