.class public Lcom/game/sdk/comon/js/JsTerm;
.super Lcom/game/sdk/comon/js/JsBase;
.source "JsTerm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/js/JsTerm$Listener;
    }
.end annotation


# instance fields
.field listener:Lcom/game/sdk/comon/js/JsBaseListener;


# direct methods
.method public constructor <init>(Lcom/game/sdk/comon/js/JsTerm$Listener;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/game/sdk/comon/js/JsBase;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/game/sdk/comon/js/JsTerm;->listener:Lcom/game/sdk/comon/js/JsBaseListener;

    .line 10
    invoke-virtual {p0, p1}, Lcom/game/sdk/comon/js/JsTerm;->setBaseListener(Lcom/game/sdk/comon/js/JsBaseListener;)V

    return-void
.end method


# virtual methods
.method public mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 15
    invoke-super {p0, p1, p2}, Lcom/game/sdk/comon/js/JsBase;->mobAppSDKexecute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
