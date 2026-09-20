.class Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$1;
.super Ljava/lang/Object;
.source "MultiImageCropFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/helper/CropViewContainerHelper$onLoadComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->loadCropView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$1;->this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadComplete()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$1;->this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->access$000(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)V

    return-void
.end method
