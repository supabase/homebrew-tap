class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.2/supabase_2.118.0-beta.2_darwin_arm64.tar.gz"
      sha256 "bff145b32d8b06c7cfd44b16e4f2e8b9d7381c2ad3d61488c3ddbd8e446e0032"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.2/supabase_2.118.0-beta.2_darwin_amd64.tar.gz"
      sha256 "56832d782502faa9b20ca8601af864de4e5df478865d463898d16a835aef6951"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.2/supabase_2.118.0-beta.2_linux_arm64.tar.gz"
      sha256 "92d16cfb6dd636945afd40b1f05dbdcafd262ef0f3ebb69b94c56d72075186e3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.2/supabase_2.118.0-beta.2_linux_amd64.tar.gz"
      sha256 "970695b112a93aaa0ce1214df6932dffa0d31059ed6a8ebd623036e769931e0c"
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
