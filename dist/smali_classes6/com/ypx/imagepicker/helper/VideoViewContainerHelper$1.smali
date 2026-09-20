.class Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$1;
.super Ljava/lang/Object;
.source "VideoViewContainerHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 60
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$1;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
