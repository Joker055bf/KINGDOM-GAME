.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$6;
.super Landroid/webkit/WebChromeClient;
.source "MobGameDialogWebviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method
