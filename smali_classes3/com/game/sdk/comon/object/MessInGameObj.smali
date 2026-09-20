.class public Lcom/game/sdk/comon/object/MessInGameObj;
.super Ljava/lang/Object;
.source "MessInGameObj.java"


# instance fields
.field private link:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "link"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/game/sdk/comon/object/MessInGameObj;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/game/sdk/comon/object/MessInGameObj;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/game/sdk/comon/object/MessInGameObj;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/game/sdk/comon/object/MessInGameObj;->link:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/game/sdk/comon/object/MessInGameObj;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/game/sdk/comon/object/MessInGameObj;->type:Ljava/lang/Integer;

    return-void
.end method
