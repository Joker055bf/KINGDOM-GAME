.class Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$2;
.super Ljava/lang/Object;
.source "VideoViewContainerHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 88
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$2;->this$1:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$2;->this$1:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;

    iget-object p1, p1, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->access$000(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 94
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$2;->this$1:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;

    iget-object p1, p1, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->access$100(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method
