.class public Lcom/game/sdk/comon/object/EventObj;
.super Ljava/lang/Object;
.source "EventObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/comon/object/EventObj$EventAction;
    }
.end annotation


# instance fields
.field action:Lcom/game/sdk/comon/object/EventObj$EventAction;

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/game/sdk/comon/object/EventObj$EventAction;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/game/sdk/comon/object/EventObj;->action:Lcom/game/sdk/comon/object/EventObj$EventAction;

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/game/sdk/comon/object/EventObj$EventAction;->UNDEFINDE:Lcom/game/sdk/comon/object/EventObj$EventAction;

    :cond_0
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/game/sdk/comon/object/EventObj;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public setAction(Lcom/game/sdk/comon/object/EventObj$EventAction;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/game/sdk/comon/object/EventObj;->action:Lcom/game/sdk/comon/object/EventObj$EventAction;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/game/sdk/comon/object/EventObj;->message:Ljava/lang/String;

    return-void
.end method
