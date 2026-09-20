.class public Lcom/game/sdk/comon/object/SdkConfigObj$Pop;
.super Ljava/lang/Object;
.source "SdkConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/SdkConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pop"
.end annotation


# instance fields
.field public canClose:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "can_close"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canClose()Z
    .locals 2

    .line 307
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->canClose:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCanClose()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->canClose:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setCanClose(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->canClose:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Pop;->url:Ljava/lang/String;

    return-void
.end method
