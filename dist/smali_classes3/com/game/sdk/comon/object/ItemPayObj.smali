.class public Lcom/game/sdk/comon/object/ItemPayObj;
.super Ljava/lang/Object;
.source "ItemPayObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/object/ItemPayObj$Config;,
        Lcom/game/sdk/comon/object/ItemPayObj$Item;
    }
.end annotation


# instance fields
.field private config:Lcom/game/sdk/comon/object/ItemPayObj$Config;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config"
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/game/sdk/comon/object/ItemPayObj$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/game/sdk/comon/object/ItemPayObj$Config;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj;->config:Lcom/game/sdk/comon/object/ItemPayObj$Config;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/ItemPayObj;->getDefautConfig()Lcom/game/sdk/comon/object/ItemPayObj$Config;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefautConfig()Lcom/game/sdk/comon/object/ItemPayObj$Config;
    .locals 2

    .line 35
    new-instance v0, Lcom/game/sdk/comon/object/ItemPayObj$Config;

    invoke-direct {v0}, Lcom/game/sdk/comon/object/ItemPayObj$Config;-><init>()V

    const/4 v1, 0x2

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/ItemPayObj$Config;->setColumns(Ljava/lang/Integer;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/ItemPayObj$Config;->setRows(Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/comon/object/ItemPayObj$Config;->setScroll(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/game/sdk/comon/object/ItemPayObj$Item;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj;->items:Ljava/util/List;

    return-object v0
.end method

.method public setConfig(Lcom/game/sdk/comon/object/ItemPayObj$Config;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj;->config:Lcom/game/sdk/comon/object/ItemPayObj$Config;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/game/sdk/comon/object/ItemPayObj$Item;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj;->items:Ljava/util/List;

    return-void
.end method
