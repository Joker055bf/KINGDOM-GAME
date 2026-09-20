.class Lcom/game/sdk/comon/js/command/CmdLogin$1;
.super Ljava/lang/Object;
.source "CmdLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/js/command/CmdLogin;->handleException(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/js/command/CmdLogin;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/js/command/CmdLogin;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/game/sdk/comon/js/command/CmdLogin$1;->this$0:Lcom/game/sdk/comon/js/command/CmdLogin;

    iput-object p2, p0, Lcom/game/sdk/comon/js/command/CmdLogin$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/game/sdk/comon/js/command/CmdLogin$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/game/sdk/comon/js/command/CmdLogin$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/game/sdk/comon/js/command/CmdLogin$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
