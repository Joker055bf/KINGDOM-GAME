.class public Lcom/game/sdk/comon/object/SdkConfigObj$Ex;
.super Ljava/lang/Object;
.source "SdkConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/SdkConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ex"
.end annotation


# instance fields
.field public logoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field public neverHideEx:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "can_hide"
    .end annotation
.end field

.field public showLogo:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_show"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNeverHideEx()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->neverHideEx:I

    return v0
.end method

.method public getShowLogo()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->showLogo:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isNeverHide()Z
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->getNeverHideEx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowLogo()Z
    .locals 2

    .line 356
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->getShowLogo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public setNeverHideEx(I)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->neverHideEx:I

    return-void
.end method

.method public setShowLogo(I)V
    .locals 0

    .line 328
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->showLogo:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ex;->text:Ljava/lang/String;

    return-void
.end method
