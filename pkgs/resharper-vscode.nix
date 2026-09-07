# resharper for vscode
{ pkgs, fetchurl, ... }:
pkgs.vscode-utils.buildVscodeExtension (finalAttrs: {
  pname = "resharper-vscode";
  inherit (finalAttrs.src) version;

  vscodeExtPublisher = "JetBrains";
  vscodeExtName = "resharper-code";
  vscodeExtUniqueId = "${finalAttrs.vscodeExtPublisher}.${finalAttrs.vscodeExtName}";

  src = fetchurl {
    url = "https://download.jetbrains.com/product?code=VSCRS&latest&distribution=linuxX64";
  };

  passthru = {
    vsix = finalAttrs.src;
  };

  meta = {
    description = "C#, Razor, and Blazor support from JetBrains: debugger, code analysis, code completion, unit testing, navigation, find usages, refactorings, code formatting, NuGet package management, and more";
    downloadPage = "https://marketplace.visualstudio.com/items?itemName=JetBrains.resharper-code";
    homepage = "https://jetbrains.com";
  };
})
