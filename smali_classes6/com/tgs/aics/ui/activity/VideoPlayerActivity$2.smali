.class Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tgs/aics/ui/activity/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 60
    invoke-static {}, Lcom/ypx/imagepicker/utils/CommonUtil;->hasContainExoPlayerClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v3}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/google/android/exoplayer2/ui/PlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$300(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;JJ)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lxyz/doikki/videoplayer/player/VideoView;->getCurrentPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v3}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Lxyz/doikki/videoplayer/player/VideoView;->getDuration()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$300(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;JJ)V

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$2;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$500(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
