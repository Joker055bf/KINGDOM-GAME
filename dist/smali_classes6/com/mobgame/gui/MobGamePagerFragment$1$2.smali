.class Lcom/mobgame/gui/MobGamePagerFragment$1$2;
.super Ljava/lang/Object;
.source "MobGamePagerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/MobGamePagerFragment$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/gui/MobGamePagerFragment$1;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/MobGamePagerFragment$1;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/mobgame/gui/MobGamePagerFragment$1$2;->this$1:Lcom/mobgame/gui/MobGamePagerFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/mobgame/gui/MobGamePagerFragment$1$2;->this$1:Lcom/mobgame/gui/MobGamePagerFragment$1;

    iget-object v0, v0, Lcom/mobgame/gui/MobGamePagerFragment$1;->this$0:Lcom/mobgame/gui/MobGamePagerFragment;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGamePagerFragment;->updateTabs()V

    return-void
.end method
