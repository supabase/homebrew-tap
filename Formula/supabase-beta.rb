class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.10/supabase_2.112.0-beta.10_darwin_arm64.tar.gz"
      sha256 "01774d02f7065f4ee4538eb9660691dc7e544bd4773c0529b2fe4ac49d4a938f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.10/supabase_2.112.0-beta.10_darwin_amd64.tar.gz"
      sha256 "208b7f59bb62ab105d4029a6cbc790e43a9b5fff707523238208a6124a6e9665"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.10/supabase_2.112.0-beta.10_linux_arm64.tar.gz"
      sha256 "300af965bbcea2d2ff6704b610a37c56cf929c2db2cec7c201ec61b3ff6b2f09"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.10/supabase_2.112.0-beta.10_linux_amd64.tar.gz"
      sha256 "a4078d86c02165ebffef8cb1ef603e560d3449a96c0fb328ec01bf89ab3fa393"
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
