.class public Lcom/game/sdk/comon/js/JsPayment;
.super Lcom/game/sdk/comon/js/JsBase;
.source "JsPayment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/js/JsPayment$Listener;,
        Lcom/game/sdk/comon/js/JsPayment$CommandJS;
    }
.end annotation


# instance fields
.field listener:Lcom/game/sdk/comon/js/JsPayment$Listener;


# direct methods
.method public constructor <init>(Lcom/game/sdk/comon/js/JsPayment$Listener;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/game/sdk/comon/js/JsBase;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/game/sdk/comon/js/JsPayment;->listener:Lcom/game/sdk/comon/js/JsPayment$Listener;

    .line 14
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/js/JsPayment;->setBaseListener(Lcom/game/sdk/comon/js/JsBaseListener;)V

    return-void
.end method


# virtual methods
.method public mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "startPayment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/js/JsBase;->mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/game/sdk/comon/js/JsPayment;->listener:Lcom/game/sdk/comon/js/JsPayment$Listener;

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1, p2}, Lcom/game/sdk/comon/js/JsPayment$Listener;->onPaymentStartIAPV3(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
