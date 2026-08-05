class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.1/supabase_2.112.0-beta.1_darwin_arm64.tar.gz"
      sha256 "d079bd69f520a3535523414922191f2146a9e1c03e975fb1919284378a236548"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.1/supabase_2.112.0-beta.1_darwin_amd64.tar.gz"
      sha256 "5d383878ec4095f9c9b4fe9a927e6f8eca70b3285d1d66cd46c8c54a0906738d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.1/supabase_2.112.0-beta.1_linux_arm64.tar.gz"
      sha256 "9fd44dc030f86d0caed2284b0459a8e03fd26e4acd1aee4c8bc14967df01f49d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.1/supabase_2.112.0-beta.1_linux_amd64.tar.gz"
      sha256 "528d4839eda7a17c535d0e63ccdd667a1051e25a5e6b91e521f8f5db91aaf512"
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
