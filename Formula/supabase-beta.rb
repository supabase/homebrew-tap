class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.1/supabase_2.118.0-beta.1_darwin_arm64.tar.gz"
      sha256 "ffbd7c58217aeb95bad6510a547691afa58a9a9a3ac8a2103b72567005972f95"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.1/supabase_2.118.0-beta.1_darwin_amd64.tar.gz"
      sha256 "19c6b068f9a53828d2510c4b24c8977d9b2505e9a2907d51347e14be8cb3bd95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.1/supabase_2.118.0-beta.1_linux_arm64.tar.gz"
      sha256 "9748095d0e18c1e394419585310176a5b632dae4574f0e4def5bb715a9c020fd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.1/supabase_2.118.0-beta.1_linux_amd64.tar.gz"
      sha256 "9b05a5ab1f49ae424a7171148a3c647ed2450845ab27611112a941a4c6dd5100"
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
