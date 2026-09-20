.class Lcom/game/sdk/comon/game/BaseDialogWebFragment$2;
.super Ljava/lang/Object;
.source "BaseDialogWebFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/BaseDialogWebFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/comon/game/BaseDialogWebFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$2;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$2;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object p1, p1, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameWebView2;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$2;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object p1, p1, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameWebView2;->goBack()V

    :cond_0
    return-void
.end method
