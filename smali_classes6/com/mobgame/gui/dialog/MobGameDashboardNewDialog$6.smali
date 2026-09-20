.class Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;
.super Ljava/lang/Object;
.source "MobGameDashboardNewDialog.java"

# interfaces
.implements Lcom/mobgame/gui/MobGameWebFragment$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 453
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 454
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$600(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 455
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$800(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 419
    :try_start_0
    iget-object p3, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p3}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6$1;

    invoke-direct {v0, p0, p2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6$1;-><init>(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$000(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/app/Activity;

    move-result-object p2

    const-string p3, "android"

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 433
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 439
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 440
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$600(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 441
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 442
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$700(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    .line 444
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$800(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    goto :goto_0

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog$6;->this$0:Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;->access$900(Lcom/mobgame/gui/dialog/MobGameDashboardNewDialog;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrollChanged(Landroid/webkit/WebView;IIII)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(Landroid/webkit/WebView;IIII)V
    .locals 0

    return-void
.end method
