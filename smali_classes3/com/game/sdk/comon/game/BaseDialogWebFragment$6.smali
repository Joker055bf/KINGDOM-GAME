.class Lcom/game/sdk/comon/game/BaseDialogWebFragment$6;
.super Ljava/lang/Object;
.source "BaseDialogWebFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/game/BaseDialogWebFragment;->goBack()V
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

    .line 319
    iput-object p1, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$6;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$6;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView2;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/game/sdk/comon/game/BaseDialogWebFragment$6;->this$0:Lcom/game/sdk/comon/game/BaseDialogWebFragment;

    iget-object v0, v0, Lcom/game/sdk/comon/game/BaseDialogWebFragment;->webView:Lcom/mobgame/gui/MobGameWebView2;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebView2;->goBack()V

    :cond_0
    return-void
.end method
