.class Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$5;
.super Landroid/webkit/WebChromeClient;
.source "MobGameHaveBackButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    const/4 p1, 0x1

    .line 223
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 224
    iget-object p2, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {p2}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p2, 0x4b

    if-lt p1, p2, :cond_0

    .line 226
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$400(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$500(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    .line 230
    :goto_0
    iget-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$5;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {p1}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$600(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)V

    return-void
.end method
