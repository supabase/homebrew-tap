class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.36/supabase_2.110.0-beta.36_darwin_arm64.tar.gz"
      sha256 "c3d2e6f1fc7241ef196febb6dd8cdae80d75e0dcc2b0525dd9a431e42083c5b8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.36/supabase_2.110.0-beta.36_darwin_amd64.tar.gz"
      sha256 "ae0522c655ec88fc0254839befc271535896513e869df019fe972b654822d48c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.36/supabase_2.110.0-beta.36_linux_arm64.tar.gz"
      sha256 "42ab52de524e87aab9eb82de0b9062feacb35cc631f72b7b3162bbba5372ec0f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.36/supabase_2.110.0-beta.36_linux_amd64.tar.gz"
      sha256 "69754cd666d90c9a0618bcf23c95a4e7bc443b826eefef270c117dfb24ff1ae4"
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
