.class public Lcom/game/sdk/comon/object/PaypalConfigObj;
.super Lcom/game/sdk/comon/object/BaseObj;
.source "PaypalConfigObj.java"


# instance fields
.field private accept_credit_cards:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accept_credit_cards"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/game/sdk/comon/object/BaseObj;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccept_credit_cards()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/game/sdk/comon/object/PaypalConfigObj;->accept_credit_cards:I

    return v0
.end method

.method public isAcceptScreditCards()Z
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/game/sdk/comon/object/PaypalConfigObj;->getAccept_credit_cards()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAccept_credit_cards(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/game/sdk/comon/object/PaypalConfigObj;->accept_credit_cards:I

    return-void
.end method
