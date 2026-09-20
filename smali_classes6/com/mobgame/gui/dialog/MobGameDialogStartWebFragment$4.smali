.class Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;
.super Ljava/lang/Object;
.source "MobGameDialogStartWebFragment.java"

# interfaces
.implements Lcom/mobgame/gui/MobGameWebViewDetail$OnPropertyChangedListener;


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

    .line 354
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 7

    .line 358
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

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

    .line 365
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameDialogStartWebFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$EventListener;->onSizeChanged(Landroid/webkit/WebView;IIII)V

    :cond_0
    return-void
.end method
