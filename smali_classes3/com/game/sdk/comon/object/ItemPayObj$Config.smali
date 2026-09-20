.class public Lcom/game/sdk/comon/object/ItemPayObj$Config;
.super Ljava/lang/Object;
.source "ItemPayObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/ItemPayObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private columns:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "columns"
    .end annotation
.end field

.field private rows:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rows"
    .end annotation
.end field

.field private scroll:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scroll"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumns()Ljava/lang/Integer;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Config;->columns:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRows()Ljava/lang/Integer;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Config;->rows:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScroll()Ljava/lang/Integer;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Config;->scroll:Ljava/lang/Integer;

    return-object v0
.end method

.method public setColumns(Ljava/lang/Integer;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Config;->columns:Ljava/lang/Integer;

    return-void
.end method

.method public setRows(Ljava/lang/Integer;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Config;->rows:Ljava/lang/Integer;

    return-void
.end method

.method public setScroll(Ljava/lang/Integer;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Config;->scroll:Ljava/lang/Integer;

    return-void
.end method
