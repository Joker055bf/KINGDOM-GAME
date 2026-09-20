.class public Lcom/game/sdk/comon/object/BaseRequestObj;
.super Ljava/lang/Object;
.source "BaseRequestObj.java"


# instance fields
.field private appKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appkey"
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/game/sdk/comon/object/BaseRequestObj;->appKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "436090d39bde404684ca8ea5928498ab"

    .line 15
    iput-object v0, p0, Lcom/game/sdk/comon/object/BaseRequestObj;->appKey:Ljava/lang/String;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/object/BaseRequestObj;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/game/sdk/comon/object/BaseRequestObj;->signature:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "302fe786ab8b5b5a44e762568f33516dba31e58a2d2d783d506fb19f2f5db8eb"

    .line 26
    iput-object v0, p0, Lcom/game/sdk/comon/object/BaseRequestObj;->signature:Ljava/lang/String;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/comon/object/BaseRequestObj;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/game/sdk/comon/object/BaseRequestObj;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/game/sdk/comon/object/BaseRequestObj;->signature:Ljava/lang/String;

    return-void
.end method
