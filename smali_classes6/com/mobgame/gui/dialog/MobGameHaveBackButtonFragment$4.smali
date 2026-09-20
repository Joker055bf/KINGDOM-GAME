.class Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$4;
.super Ljava/lang/Object;
.source "MobGameHaveBackButtonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->updateHeaderBar()V
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

    .line 166
    iput-object p1, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$100(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$200(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment$4;->this$0:Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;

    invoke-static {v0}, Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;->access$200(Lcom/mobgame/gui/dialog/MobGameHaveBackButtonFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
