.class Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;
.super Ljava/lang/Object;
.source "MobGameDialogWebviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 243
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "reload: url="

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$002(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;I)I

    .line 248
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->showDialog()V

    goto/16 :goto_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebViewDetail;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 253
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data:text/html;charset=utf-8;base64,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    .line 255
    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Lcom/mobgame/gui/MobGameWebViewDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameWebViewDetail;->reload()V

    goto :goto_1

    .line 256
    :cond_2
    :goto_0
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "loadUrlWithMobHeaders from onCreateView() "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment$3;->this$0:Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->loadUrlWithMobHeaders(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_3
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reload: webview url null, cannot reload!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 265
    :cond_4
    invoke-static {}, Lcom/mobgame/gui/dialog/MobGameDialogWebviewFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reload: webview null, cannot reload!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
