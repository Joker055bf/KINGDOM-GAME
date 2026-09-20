.class Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$2;
.super Ljava/lang/Object;
.source "MultiImageCropFragment.java"

# interfaces
.implements Lcom/ypx/imagepicker/helper/CropViewContainerHelper$ResetSizeExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->fullOrFit()V
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

    .line 550
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$2;->this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetAllCropViewSize(Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$2;->this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->access$100(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;Lcom/ypx/imagepicker/widget/cropimage/CropImageView;Z)V

    return-void
.end method
