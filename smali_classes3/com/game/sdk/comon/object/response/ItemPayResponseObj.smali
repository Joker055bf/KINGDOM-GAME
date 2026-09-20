.class public Lcom/game/sdk/comon/object/response/ItemPayResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "ItemPayResponseObj.java"


# instance fields
.field private data:Lcom/game/sdk/comon/object/ItemPayObj;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/game/sdk/comon/object/ItemPayObj;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/ItemPayResponseObj;->data:Lcom/game/sdk/comon/object/ItemPayObj;

    return-object v0
.end method

.method public setData(Lcom/game/sdk/comon/object/ItemPayObj;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/ItemPayResponseObj;->data:Lcom/game/sdk/comon/object/ItemPayObj;

    return-void
.end method
