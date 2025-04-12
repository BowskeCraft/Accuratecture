# Accuratecture

*version3.2.0*

This is a minecraft resource pack for Minecraft:Java edition **1.20.1** ~ **1.21.5** .<br/>
これはMinecraft:Java Edition のバージョン **1.20.1** ~ **1.21.5** 向けのリソースパックです。

All of images in this pack are original.<br/>
含まれる全ての画像ファイルはオリジナルです。

> [!CAUTION]
> This pack don't assumes another resource packs that changes vanilla blocks.
> We don't guarantee the behavior when used with them.<br/>
> このパックはブロックの見た目を変える他のリソースパックの導入を想定していません。
> 導入した際の動作は保証しかねます．

> [!NOTE]
> This pack is not for Bedrock edition.For technical reasons, **NO** future supports are planned either.<br/>
> このパックは統合版用ではありません．技術的な理由により，将来的なサポートも予定しておりません．

## Features / パックの特徴

- Better block Appearance

  - This resourcepack make some blocks more accurately/conveniently while keeping vanilla resolution. For example,the top face of bricks are changed into fishbone pattern to remove direction dependency.<br/>
  このリソースパックは，バニラの解像度を維持しつつもいくつかのブロックの見た目を改良します．例えば，レンガブロックの上下面はフィッシュボーンの並び方になって，方向依存性がなくなります．

- Deformable Blocks

  - Some gets new appearance,some are stacked/connected more accuratery.<br/>
    いくつかのブロックは新たな見た目を与えられ，またより正確に接続するようになります．

- PBR support <sub>(*beta*)</sub>

  - Almost all original textures in this pack have 16x normal maps and specular maps that besed on LabPBR standard.Some vanilla textures also have them.<br/>
  このパックに入っているほとんどのテクスチャにlabPBR準拠のマテリアルテクスチャが追加されます．いくつかのバニラのテクスチャにも同様に追加されます．

- CTM support <sub>(*beta*)</sub>

## Recommended Settings / 推奨設定

- **Optifine**
  
  - **Enable**: *Options > Video settings > Details > Alternate Blocks*

  - Since we couldn't confirm normal rendering with optifine, do *NOT* enable CTM with them.

- **Sodium** with **Iris**, **Rubidium** with **Oculus**
  
  - **Disable**: *Options > Video settings > Performance > Use Block Face Culling*

- Shader settings
  
  - Recommend Activating *PBR*(*labPBR*) or *Normal maps*.
  
  - If possible, activate *Parallax Occlusion Mapping*, *Parallax*, or *POM*.
