.class Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;
.super Landroidx/activity/OnBackPressedCallback;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;Z)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 77
    :try_start_0
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    .line 80
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    .line 85
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$600(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$600(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$700(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$500(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$500(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$800(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    :cond_3
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$3;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->finish()V

    return-void
.end method
