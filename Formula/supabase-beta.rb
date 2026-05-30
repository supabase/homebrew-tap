class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.6/supabase_2.103.0-beta.6_darwin_arm64.tar.gz"
      sha256 "1fdb12074af2d5293fa7b9dfbdd854298cd044488c8106437eb916e0072ba36b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.6/supabase_2.103.0-beta.6_darwin_amd64.tar.gz"
      sha256 "6cab0b79ce3afa7ec09820ab918694c312b46408dbc891509ced41115e10ab4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.6/supabase_2.103.0-beta.6_linux_arm64.tar.gz"
      sha256 "837f2895ab75f07eb14c2bb210e4fc0e09c88123f3f22316b4c3bbf4145a9d19"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.6/supabase_2.103.0-beta.6_linux_amd64.tar.gz"
      sha256 "f201c4e2e5f13c49bbdfc5cc63bac4077d536bec057d9d122a5057289b2cdf07"
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
