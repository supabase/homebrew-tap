class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.3/supabase_2.114.0-beta.3_darwin_arm64.tar.gz"
      sha256 "0f76e93f6d1ebfc5fe1b0c119238cd207b0932280248882ae2c523656cca8322"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.3/supabase_2.114.0-beta.3_darwin_amd64.tar.gz"
      sha256 "68850ee1ec0ca57b53740226cd4b3659863cc572fc303635fba9c1e934270799"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.3/supabase_2.114.0-beta.3_linux_arm64.tar.gz"
      sha256 "8a7ab7dc402411fe4232f6a310658927ede0a8173a6d336897536432cf894c2a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.3/supabase_2.114.0-beta.3_linux_amd64.tar.gz"
      sha256 "2fe3bf2c6c9d6c25da930f199fb7e47b2df7ec0c77b3990c1c36dffa70c05cd9"
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
