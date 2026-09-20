.class Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


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

.field final synthetic val$player:Lcom/google/android/exoplayer2/SimpleExoPlayer;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    iput-object p2, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->val$player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(I)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$1200(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->val$player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tgs/aics/utils/Utils;->milliseconds2String(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$1300(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    .line 158
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    iget-object v0, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->val$player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-static {p1, v0}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$1100(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$900(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/VideoPlayerActivity$4;->this$0:Lcom/tgs/aics/ui/activity/VideoPlayerActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/VideoPlayerActivity;->access$1000(Lcom/tgs/aics/ui/activity/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
