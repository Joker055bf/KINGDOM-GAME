.class public Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "AuthenConfigResponseObj.java"


# instance fields
.field private data:Lcom/game/sdk/comon/object/AuthenConfigObj;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/game/sdk/comon/object/AuthenConfigObj;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;->data:Lcom/game/sdk/comon/object/AuthenConfigObj;

    return-object v0
.end method

.method public setData(Lcom/game/sdk/comon/object/AuthenConfigObj;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/AuthenConfigResponseObj;->data:Lcom/game/sdk/comon/object/AuthenConfigObj;

    return-void
.end method
