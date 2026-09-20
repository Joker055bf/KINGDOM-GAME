.class public Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "RetryPaymentResponseObj.java"


# instance fields
.field private code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
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
.method public getCode()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/game/sdk/comon/object/response/RetryPaymentResponseObj;->code:I

    return-void
.end method
