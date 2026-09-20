.class Lcom/game/sdk/comon/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/comon/utils/Utils;->showLoading(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mActivity:Landroid/app/Activity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$mActivity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 160
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/game/sdk/comon/view/CustomProgressDialog;

    iget-object v1, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$mActivity:Landroid/app/Activity;

    sget v2, Lcom/mobgame/R$string;->please_wait:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/comon/view/CustomProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/game/sdk/comon/utils/Utils;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 162
    :cond_0
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 163
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$show:Z

    if-eqz v0, :cond_1

    .line 164
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$show:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 167
    :cond_2
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$show:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 169
    :cond_3
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$show:Z

    if-nez v0, :cond_4

    return-void

    .line 171
    :cond_4
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$show:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 173
    :cond_5
    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/game/sdk/comon/utils/Utils$1;->val$show:Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/game/sdk/comon/utils/Utils;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    :cond_6
    :goto_0
    return-void
.end method
