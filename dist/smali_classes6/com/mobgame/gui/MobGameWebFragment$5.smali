.class Lcom/mobgame/gui/MobGameWebFragment$5;
.super Ljava/lang/Object;
.source "MobGameWebFragment.java"

# interfaces
.implements Lcom/mobgame/gui/MobGameWebView$OnPropertyChangedListener;


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

    .line 487
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$5;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 7

    .line 491
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$5;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$5;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$5;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$700(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebView;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/mobgame/gui/MobGameWebFragment$EventListener;->onScrollChanged(Landroid/webkit/WebView;IIII)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    .line 498
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$5;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$5;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$200(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebFragment$EventListener;

    move-result-object v1

    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$5;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$700(Lcom/mobgame/gui/MobGameWebFragment;)Lcom/mobgame/gui/MobGameWebView;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/mobgame/gui/MobGameWebFragment$EventListener;->onSizeChanged(Landroid/webkit/WebView;IIII)V

    :cond_0
    return-void
.end method
