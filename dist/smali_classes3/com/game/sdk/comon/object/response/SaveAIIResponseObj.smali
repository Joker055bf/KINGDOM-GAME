.class public Lcom/game/sdk/comon/object/response/SaveAIIResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "SaveAIIResponseObj.java"


# instance fields
.field private status:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/game/sdk/comon/object/response/SaveAIIResponseObj;->status:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/game/sdk/comon/object/response/SaveAIIResponseObj;->status:I

    return-void
.end method
