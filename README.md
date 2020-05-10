# WindowsBAT
Windowsのバッチファイルを置いてます。

### ConnectionRemoteDeskTop.bat
ソースコード内に登録したPCにリモートデスクトップ接続するバッチです。
### SwitchNetworkAdapter.bat
使用するネットワークアダプタを切り替えるバッチです。<br>
ネットワークアダプタは端末によって変わるため、別途修正が必要になります。
### build.bat
本バッチにslnファイルをドラッグ&ドロップするとソリューションがリビルド（AnyCPU, Release）されます。<br>
初期設定ではビルドを**VisualStudio2019Community**の**MSBuild**で行うことになってます。<br>
環境に合わせ、ソースの**VsDevCmd.bat**のパスを修正してください。<br>
また、クリーンを行い、AnyCPUのReleaseでビルドする設定になっているため、Debugビルド等に変更したいのであればソースの修正が必要です。
## References
