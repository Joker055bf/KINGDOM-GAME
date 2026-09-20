.class Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$2;
.super Ljava/lang/Object;
.source "MobGameConfirmDialogWithWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$2;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$2;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$2;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->eventListener:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;

    invoke-interface {v0, p1}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$EventListener;->onConfirmClick(Landroid/view/View;)V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView$2;->this$0:Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameConfirmDialogWithWebView;->dismiss()V

    return-void
.end method
