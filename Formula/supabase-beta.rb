class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.5/supabase_2.111.0-beta.5_darwin_arm64.tar.gz"
      sha256 "f88dff2e48775e3c950451f06cf4797074fc8ddeef2281288779539343959caa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.5/supabase_2.111.0-beta.5_darwin_amd64.tar.gz"
      sha256 "b2ff491c9c6d0ba151167d79a00b435ae17d0d20306cbe14e38023af6f6c8ab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.5/supabase_2.111.0-beta.5_linux_arm64.tar.gz"
      sha256 "b282451f86146853f34560d7d487be36287a2f8fc7e8d9885aacd9aee545a027"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.5/supabase_2.111.0-beta.5_linux_amd64.tar.gz"
      sha256 "d8f93c9b75864d5cc400a01b09586d16c596bad4d39862c2633f18a97e073aba"
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
