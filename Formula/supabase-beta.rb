class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.10/supabase_3.2.0-beta.10_darwin_arm64.tar.gz"
      sha256 "dd17cf4b6914e5f801f5b77eded1c7f4b416387116026ef84d1ebbcf72f34c0a"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.10/supabase_3.2.0-beta.10_darwin_amd64.tar.gz"
      sha256 "788ec3fac7560a279872046cb7f7af8ba95964202118d673bc122d9d8db3b275"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.10/supabase_3.2.0-beta.10_linux_arm64.tar.gz"
      sha256 "5fc47072b3310c4712bb122858b8849b4caa69405b9a2279e4a804280c9483fc"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.10/supabase_3.2.0-beta.10_linux_amd64.tar.gz"
      sha256 "722ce9623e0912800f8e16522e22e4939812408489c73b4155fae734b3eadf35"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
