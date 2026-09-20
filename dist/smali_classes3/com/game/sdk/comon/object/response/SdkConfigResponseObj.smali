.class public Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "SdkConfigResponseObj.java"


# instance fields
.field private data:Lcom/game/sdk/comon/object/SdkConfigObj;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/game/sdk/comon/object/SdkConfigObj;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->data:Lcom/game/sdk/comon/object/SdkConfigObj;

    return-object v0
.end method

.method public setData(Lcom/game/sdk/comon/object/SdkConfigObj;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/SdkConfigResponseObj;->data:Lcom/game/sdk/comon/object/SdkConfigObj;

    return-void
.end method
