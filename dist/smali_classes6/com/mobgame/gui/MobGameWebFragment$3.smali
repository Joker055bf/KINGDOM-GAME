.class Lcom/mobgame/gui/MobGameWebFragment$3;
.super Landroid/webkit/WebChromeClient;
.source "MobGameWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/MobGameWebFragment;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobgame/gui/MobGameWebFragment;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGameWebFragment;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$3;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$3;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$3;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mobgame/gui/MobGameWebFragment$EventListener;->onProgressChanged(Landroid/webkit/WebView;I)V

    :cond_0
    return-void
.end method
