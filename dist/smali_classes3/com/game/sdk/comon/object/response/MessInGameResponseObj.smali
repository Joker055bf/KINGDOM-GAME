.class public Lcom/game/sdk/comon/object/response/MessInGameResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "MessInGameResponseObj.java"


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/game/sdk/comon/object/response/MessInGameResponseObj;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/game/sdk/comon/object/MessInGameObj;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/game/sdk/comon/object/response/MessInGameResponseObj;->data:Ljava/util/ArrayList;

    return-void
.end method
