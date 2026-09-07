# resharper for vscode
# installing the extension normally hangs on startup so we install it via the .vsix, which requires a custom package
{ pkgs, fetchurl, ... }:
pkgs.vscode-utils.buildVscodeExtension (finalAttrs: {
  pname = "resharper-vscode";
  version = "1.0";

  vscodeExtPublisher = "JetBrains";
  vscodeExtName = "resharper-code";
  vscodeExtUniqueId = "${finalAttrs.vscodeExtPublisher}.${finalAttrs.vscodeExtName}";

  src = fetchurl {
    name = "resharper-vscode.vsix";
    url = "https://download.jetbrains.com/product?code=VSCRS&latest&distribution=linuxX64";
    sha256 = "sha256-MeJ4yET8XcZkIddoxFvtni5oT6rvCzMk7LnofML1yzM=";
  };

  passthru = {
    vsix = finalAttrs.src;
  };

  meta = {
    description = "ReSharper for Visual Studio Code";
    downloadPage = "https://marketplace.visualstudio.com/items?itemName=JetBrains.resharper-code";
    homepage = "https://jetbrains.com";
  };
})
