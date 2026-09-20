.class Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$2;
.super Ljava/lang/Object;
.source "VideoViewContainerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 68
    iput-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$2;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$2;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-static {p1}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->access$000(Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$2;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->onPause()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper$2;->this$0:Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/helper/VideoViewContainerHelper;->onResume()V

    :goto_0
    return-void
.end method
