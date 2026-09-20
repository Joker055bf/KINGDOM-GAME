.class Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "ImageAndVideoPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;->initPhotoPreviewViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

.field final synthetic val$imageView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

.field final synthetic val$loadingProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->this$0:Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->val$loadingProgressBar:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->val$imageView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 615
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 617
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->val$loadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 608
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 610
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->val$loadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 622
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 624
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->val$loadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 625
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->val$imageView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p2, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 604
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

.method protected setResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    .line 604
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/ImageAndVideoPreviewActivity$MediaPreviewFragment$6;->setResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
