.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;
.super Ljava/lang/Object;
.source "MobGameDialogWebviewFragment.java"

# interfaces
.implements Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;


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

    .line 402
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 7

    .line 406
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onScrollChanged(Landroid/webkit/WebView;IIII)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    .line 413
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$7;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onSizeChanged(Landroid/webkit/WebView;IIII)V

    :cond_0
    return-void
.end method
