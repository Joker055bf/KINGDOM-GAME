.class public Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;
.super Ljava/lang/Object;
.source "ItemPayObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/comon/object/ItemPayObj$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigItem"
.end annotation


# instance fields
.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/game/sdk/comon/object/ItemPayObj$Item$ConfigItem;->url:Ljava/lang/String;

    return-void
.end method
