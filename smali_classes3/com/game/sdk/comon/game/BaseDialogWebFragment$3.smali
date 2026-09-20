.class Lcom/game/sdk/comon/game/BaseDialogWebFragment$3;
.super Ljava/lang/Object;
.source "BaseDialogWebFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


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

    .line 169
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$3;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$3;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$3;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView2;->reload()V

    :cond_0
    return-void
.end method
