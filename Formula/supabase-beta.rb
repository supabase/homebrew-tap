class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.21/supabase_3.1.0-beta.21_darwin_arm64.tar.gz"
      sha256 "18499fafd5065337f928370875ddd897d4d8508795a72237a135df31edd37d16"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.21/supabase_3.1.0-beta.21_darwin_amd64.tar.gz"
      sha256 "9c30d5999b70531477424c4577d2e55ade3349b29512a019e95c1a9c00dd5c68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.21/supabase_3.1.0-beta.21_linux_arm64.tar.gz"
      sha256 "223a87c499ed8ef0bdc5f5bd0d507f4c385def84c0d75473db524b6ce95e28d4"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.21/supabase_3.1.0-beta.21_linux_amd64.tar.gz"
      sha256 "54f1ba88b2d7b2644924b77af623a93644b0bf8a54a5dbdc331c905ab4af960b"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
