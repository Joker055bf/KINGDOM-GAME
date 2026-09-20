.class Lcom/mobgame/gui/MobGameWebFragment$1;
.super Ljava/lang/Object;
.source "MobGameWebFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobgame/gui/MobGameWebFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 140
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$1;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$1;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-virtual {v0}, Lcom/mobgame/gui/MobGameWebFragment;->reload()V

    .line 144
    iget-object v0, p0, Lcom/mobgame/gui/MobGameWebFragment$1;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v0}, Lcom/mobgame/gui/MobGameWebFragment;->access$000(Lcom/mobgame/gui/MobGameWebFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRefresh: ntf id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mobgame/gui/MobGameWebFragment$1;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v2}, Lcom/mobgame/gui/MobGameWebFragment;->access$100(Lcom/mobgame/gui/MobGameWebFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mobgame.broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "category"

    const-string v2, "swipe_refresh"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment$1;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {v1}, Lcom/mobgame/gui/MobGameWebFragment;->access$100(Lcom/mobgame/gui/MobGameWebFragment;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/mobgame/gui/MobGameWebFragment$1;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-virtual {v1}, Lcom/mobgame/gui/MobGameWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
