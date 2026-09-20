.class public Lcom/game/sdk/comon/js/JsBase;
.super Ljava/lang/Object;
.source "JsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/js/JsBase$switchCommandJS;
    }
.end annotation


# instance fields
.field baseListener:Lcom/game/sdk/comon/js/JsBaseListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseListener()Lcom/game/sdk/comon/js/JsBaseListener;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/game/sdk/comon/js/JsBase;->baseListener:Lcom/game/sdk/comon/js/JsBaseListener;

    return-object v0
.end method

.method public mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "backtoWindow"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "openWindow"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p2, "closeWindow"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 28
    :pswitch_0
    iget-object p1, p0, Lcom/game/sdk/comon/js/JsBase;->baseListener:Lcom/game/sdk/comon/js/JsBaseListener;

    if-eqz p1, :cond_3

    .line 29
    invoke-interface {p1}, Lcom/game/sdk/comon/js/JsBaseListener;->onBackToWindowns()V

    goto :goto_1

    .line 23
    :pswitch_1
    iget-object p1, p0, Lcom/game/sdk/comon/js/JsBase;->baseListener:Lcom/game/sdk/comon/js/JsBaseListener;

    if-eqz p1, :cond_3

    .line 24
    invoke-interface {p1}, Lcom/game/sdk/comon/js/JsBaseListener;->onOpenWindow()V

    goto :goto_1

    .line 18
    :pswitch_2
    iget-object p1, p0, Lcom/game/sdk/comon/js/JsBase;->baseListener:Lcom/game/sdk/comon/js/JsBaseListener;

    if-eqz p1, :cond_3

    .line 19
    invoke-interface {p1}, Lcom/game/sdk/comon/js/JsBaseListener;->onCloseWindow()V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10864c08 -> :sswitch_2
        0x1afd8eda -> :sswitch_1
        0x69f6fc32 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBaseListener(Lcom/game/sdk/comon/js/JsBaseListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/game/sdk/comon/js/JsBase;->baseListener:Lcom/game/sdk/comon/js/JsBaseListener;

    return-void
.end method
