.class Lcom/mobgame/gui/DialogInGameFragment$1;
.super Landroid/webkit/WebChromeClient;
.source "DialogInGameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/DialogInGameFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/DialogInGameFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/DialogInGameFragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/mobgame/gui/DialogInGameFragment$1;->this$0:Lcom/mobgame/gui/DialogInGameFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    const/4 p1, 0x1

    .line 154
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 155
    iget-object p2, p0, Lcom/mobgame/gui/DialogInGameFragment$1;->this$0:Lcom/mobgame/gui/DialogInGameFragment;

    invoke-static {p2}, Lcom/mobgame/gui/DialogInGameFragment;->access$000(Lcom/mobgame/gui/DialogInGameFragment;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p2, 0x4b

    if-lt p1, p2, :cond_0

    .line 157
    iget-object p1, p0, Lcom/mobgame/gui/DialogInGameFragment$1;->this$0:Lcom/mobgame/gui/DialogInGameFragment;

    invoke-static {p1}, Lcom/mobgame/gui/DialogInGameFragment;->access$100(Lcom/mobgame/gui/DialogInGameFragment;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/mobgame/gui/DialogInGameFragment$1;->this$0:Lcom/mobgame/gui/DialogInGameFragment;

    invoke-static {p1}, Lcom/mobgame/gui/DialogInGameFragment;->access$200(Lcom/mobgame/gui/DialogInGameFragment;)V

    :goto_0
    return-void
.end method
