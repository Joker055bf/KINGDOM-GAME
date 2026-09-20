.class Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;
.super Ljava/lang/Object;
.source "VideoViewContainerHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->loadVideoView(Landroid/view/ViewGroup;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;Lcom/ypx/imagepicker/views/PickerUiConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$1;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$1;-><init>(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 88
    new-instance v0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$2;

    invoke-direct {v0, p0}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3$2;-><init>(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$3;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method
