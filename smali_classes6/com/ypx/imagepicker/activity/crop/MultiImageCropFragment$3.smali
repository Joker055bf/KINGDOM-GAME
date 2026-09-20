.class Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;
.super Ljava/lang/Object;
.source "MultiImageCropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->toggleFolderList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 685
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;->this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    iput-object p2, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;->this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->access$200(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 689
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;->this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->access$300(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 690
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;->this$0:Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;->access$300(Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/crop/MultiImageCropFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
