.class public Lcom/game/sdk/comon/object/BaseObj;
.super Ljava/lang/Object;
.source "BaseObj.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createError(Ljava/lang/String;Ljava/lang/String;)Lcom/game/sdk/comon/object/BaseObj;
    .locals 0

    .line 19
    new-instance p0, Lcom/game/sdk/comon/object/BaseObj;

    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/object/BaseObj;->setMessage(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/game/sdk/comon/object/BaseObj;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/game/sdk/comon/object/BaseObj;->status:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/BaseObj;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/game/sdk/comon/object/BaseObj;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/game/sdk/comon/object/BaseObj;->status:I

    return-void
.end method
