.class Lcom/mobgame/gui/MobGameWebFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "MobGameWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobgame/gui/MobGameWebFragment;
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

    .line 264
    iput-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$2;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$2;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-static {p1}, Lcom/mobgame/gui/MobGameWebFragment;->access$000(Lcom/mobgame/gui/MobGameWebFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "reloadFromIntent"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "category_from_bug"

    .line 268
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "refresh_from_bug"

    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/mobgame/gui/MobGameWebFragment$2;->this$0:Lcom/mobgame/gui/MobGameWebFragment;

    invoke-virtual {p1}, Lcom/mobgame/gui/MobGameWebFragment;->reload()V

    :cond_0
    return-void
.end method
