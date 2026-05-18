class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.0-beta.1/supabase_2.100.0-beta.1_darwin_arm64.tar.gz"
      sha256 "c2861de170816ce03110c6c7f2ba482a8abf736497dbf2b1c7aff5d52b6e3d99"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.0-beta.1/supabase_2.100.0-beta.1_darwin_amd64.tar.gz"
      sha256 "7432b96e0c31cc227dd1498469c724b94bdaecc30e5456176054294e96722dfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.0-beta.1/supabase_2.100.0-beta.1_linux_arm64.tar.gz"
      sha256 "a7435927ed0106760f3da91fdf40a95218969207351e47c3d63cf45d3a192e1d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.0-beta.1/supabase_2.100.0-beta.1_linux_amd64.tar.gz"
      sha256 "508ce5cecb21126731f99973992eb7967816e2302d2cfeae2030e3dcaaeef988"
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
