.class public Lcom/game/sdk/comon/object/response/UserResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "UserResponseObj.java"


# instance fields
.field private data:Lcom/game/sdk/comon/object/UserObj;
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
.method public getData()Lcom/game/sdk/comon/object/UserObj;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/UserResponseObj;->data:Lcom/game/sdk/comon/object/UserObj;

    return-object v0
.end method

.method public setData(Lcom/game/sdk/comon/object/UserObj;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/UserResponseObj;->data:Lcom/game/sdk/comon/object/UserObj;

    return-void
.end method
