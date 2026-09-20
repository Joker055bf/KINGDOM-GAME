.class Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;
.super Ljava/lang/Object;
.source "MobGameHaveBackButtonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->hideProgressBar()V
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

    .line 488
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$000(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8$1;

    invoke-direct {v1, p0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8$1;-><init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
