.class Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8$1;
.super Ljava/lang/Object;
.source "MobGameHaveBackButtonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;


# direct methods
.method constructor <init>(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8$1;->this$1:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8$1;->this$1:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;

    iget-object v0, v0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$8;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$300(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
