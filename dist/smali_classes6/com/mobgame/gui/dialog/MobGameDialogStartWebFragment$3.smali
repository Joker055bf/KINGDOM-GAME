.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$3;
.super Landroid/webkit/WebChromeClient;
.source "MobGameDialogStartWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->initWebview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method
