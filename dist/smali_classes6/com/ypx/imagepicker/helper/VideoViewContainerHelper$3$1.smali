.class Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$1;
.super Ljava/lang/Object;
.source "VideoViewContainerHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$1;->this$1:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$1;->this$1:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;

    iget-object p1, p1, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->access$000(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method
