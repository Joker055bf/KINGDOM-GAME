.class Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;
.super Lxyz/doikki/videoplayer/player/BaseVideoView$SimpleOnStateChangeListener;
.source "ImageAndVideoPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->initVideoPlayerViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;->this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    invoke-direct {p0}, Lxyz/doikki/videoplayer/player/BaseVideoView$SimpleOnStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayStateChanged(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;->this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->access$1000(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)V

    goto :goto_0

    .line 325
    :cond_1
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;->this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->access$800(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;Lcom/google/android/exoplayer2/SimpleExoPlayer;)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;->this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->access$600(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;->this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->access$600(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    goto :goto_0

    .line 331
    :cond_4
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;->this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->access$600(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Lcom/tgs/aics/widget/VideoLoadingView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tgs/aics/widget/VideoLoadingView;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$4;->this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->access$1100(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
