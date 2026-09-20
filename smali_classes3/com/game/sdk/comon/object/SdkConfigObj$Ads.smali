.class public Lcom/game/sdk/comon/object/SdkConfigObj$Ads;
.super Ljava/lang/Object;
.source "SdkConfigObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/SdkConfigObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ads"
.end annotation


# instance fields
.field public apiKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api_key"
    .end annotation
.end field

.field public isShow:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_show"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ads;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIsShow()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ads;->isShow:I

    return v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ads;->apiKey:Ljava/lang/String;

    return-void
.end method

.method public setIsShow(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/game/sdk/comon/object/SdkConfigObj$Ads;->isShow:I

    return-void
.end method
