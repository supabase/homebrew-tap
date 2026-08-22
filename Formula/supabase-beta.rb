class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.2/supabase_2.116.0-beta.2_darwin_arm64.tar.gz"
      sha256 "10f5ce3e9bdeb4b804eb71439b0cc01e02234b6912800c892aae09d118eeaf94"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.2/supabase_2.116.0-beta.2_darwin_amd64.tar.gz"
      sha256 "bd06f1948e429a5acebc755d888a8baa0cc056c9bab5bcb2ca5ef37f0e92fd76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.2/supabase_2.116.0-beta.2_linux_arm64.tar.gz"
      sha256 "c5a915640e09570ce544afff45b86e903ef88415043df12f5b8ce1ff9301a457"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.2/supabase_2.116.0-beta.2_linux_amd64.tar.gz"
      sha256 "6cdec33678bf1eb6c4f9807ffdfb3ebf619fd46a72868c0c887e7155087a5b9e"
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
