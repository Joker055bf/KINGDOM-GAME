.class Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "PhotoPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->initView()V
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
.field final synthetic this$0:Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;

.field final synthetic val$imageView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;


# direct methods
.method constructor <init>(Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;Landroid/widget/ImageView;Lcom/ypx/imagepicker/widget/cropimage/CropImageView;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;->this$0:Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;

    iput-object p3, p0, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;->val$imageView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;->this$0:Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->access$000(Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object p1, p0, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;->this$0:Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->access$000(Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

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

    .line 60
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 62
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;->this$0:Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;

    invoke-static {p2}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;->access$000(Lcom/tgs/aics/ui/activity/PhotoPreviewActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    iget-object p2, p0, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;->val$imageView:Lcom/ypx/imagepicker/widget/cropimage/CropImageView;

    invoke-virtual {p2, p1}, Lcom/ypx/imagepicker/widget/cropimage/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 42
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method

.method protected setResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/tgs/aics/ui/activity/PhotoPreviewActivity$1;->setResource(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
