.class Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;
.super Lxyz/doikki/videoplayer/player/BaseVideoView$SimpleOnStateChangeListener;
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
.method constructor <init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-direct {p0}, Lxyz/doikki/videoplayer/player/BaseVideoView$SimpleOnStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayStateChanged(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$1300(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    goto :goto_0

    .line 193
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$1100(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    goto :goto_0

    .line 190
    :cond_4
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_5
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_6
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$5;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$1400(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
