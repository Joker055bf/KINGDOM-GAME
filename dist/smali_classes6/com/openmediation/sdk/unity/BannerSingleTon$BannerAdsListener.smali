.class Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;
.super Ljava/lang/Object;
.source "BannerSingleTon.java"

# interfaces
.implements Lcom/openmediation/sdk/banner/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/unity/BannerSingleTon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BannerAdsListener"
.end annotation


# instance fields
.field private final mPlacementId:Ljava/lang/String;

.field private final mPosition:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p2, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPosition:I

    .line 159
    iput-object p1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPlacementId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBannerAdClicked(Ljava/lang/String;)V
    .locals 1

    const-string p1, "onBannerClicked"

    .line 193
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPlacementId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdLoadFailed(Ljava/lang/String;Lcom/openmediation/sdk/utils/error/Error;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p2}, Lcom/openmediation/sdk/utils/error/Error;->toString()Ljava/lang/String;

    move-result-object p1

    .line 185
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPlacementId:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "onBannerLoadFailed"

    .line 188
    invoke-static {p2}, Lcom/openmediation/sdk/unity/OmBridge;->toJsonArray(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBannerAdLoaded(Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .line 165
    :try_start_0
    check-cast p2, Landroid/widget/FrameLayout;

    .line 166
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 168
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPlacementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPlacementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 170
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPlacementId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v1

    invoke-static {v1}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$400(Lcom/openmediation/sdk/unity/BannerSingleTon;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 173
    :cond_0
    iget v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x30

    goto :goto_0

    :cond_1
    const/16 v0, 0x50

    :goto_0
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$400(Lcom/openmediation/sdk/unity/BannerSingleTon;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-static {}, Lcom/openmediation/sdk/unity/BannerSingleTon;->getInstance()Lcom/openmediation/sdk/unity/BannerSingleTon;

    move-result-object p1

    invoke-static {p1}, Lcom/openmediation/sdk/unity/BannerSingleTon;->access$200(Lcom/openmediation/sdk/unity/BannerSingleTon;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPlacementId:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onBannerLoadSuccess"

    .line 176
    iget-object p2, p0, Lcom/openmediation/sdk/unity/BannerSingleTon$BannerAdsListener;->mPlacementId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/openmediation/sdk/unity/OmBridge;->sendUnityEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 178
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Banner show failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OM-OmBridge"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
