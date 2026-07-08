class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.10/supabase_2.110.0-beta.10_darwin_arm64.tar.gz"
      sha256 "66067a9f1783ce7618c6cde4e962c83b4d7f9eec0622565e80b020d137cedda3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.10/supabase_2.110.0-beta.10_darwin_amd64.tar.gz"
      sha256 "c83fcd07bba7e988136a551c4325bb76538ea163cce11e109dc18f8703f37301"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.10/supabase_2.110.0-beta.10_linux_arm64.tar.gz"
      sha256 "93ca99f580ff053719bc36a67f636b43c1611108a3e2a1387e27be6ec9cff3c9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.10/supabase_2.110.0-beta.10_linux_amd64.tar.gz"
      sha256 "dd3dc2a480f8e598f3223b04faa119dcbcd2be150f32f433f0f8410850139a0c"
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
