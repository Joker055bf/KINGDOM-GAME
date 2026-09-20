.class Lcom/game/sdk/comon/js/command/CmdDashboard$1;
.super Ljava/lang/Object;
.source "CmdDashboard.java"

# interfaces
.implements Lcom/mobgame/api/PostTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/js/command/CmdDashboard;->mobOpenFBFanpage(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/js/command/CmdDashboard;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$hasSocial:Z


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/js/command/CmdDashboard;ZLandroid/app/Activity;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/game/sdk/comon/js/command/CmdDashboard$1;->this$0:Lcom/game/sdk/comon/js/command/CmdDashboard;

    iput-boolean p2, p0, Lcom/game/sdk/comon/js/command/CmdDashboard$1;->val$hasSocial:Z

    iput-object p3, p0, Lcom/game/sdk/comon/js/command/CmdDashboard$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 305
    iget-boolean p1, p0, Lcom/game/sdk/comon/js/command/CmdDashboard$1;->val$hasSocial:Z

    if-nez p1, :cond_0

    .line 306
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.mobgame.broadcast"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "category"

    const-string v1, "reload"

    .line 307
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lcom/game/sdk/comon/js/command/CmdDashboard$1;->val$a:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method
