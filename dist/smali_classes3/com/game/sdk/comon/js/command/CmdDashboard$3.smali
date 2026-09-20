.class Lcom/game/sdk/comon/js/command/CmdDashboard$3;
.super Ljava/lang/Object;
.source "CmdDashboard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/js/command/CmdDashboard;->mobSelectImage2(Landroid/app/Activity;Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/js/command/CmdDashboard;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/js/command/CmdDashboard;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/game/sdk/comon/js/command/CmdDashboard$3;->this$0:Lcom/game/sdk/comon/js/command/CmdDashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 557
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
