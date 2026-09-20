.class Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$TouchImageAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "MultiImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchImageAdapter"
.end annotation


# instance fields
.field private imageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/ArrayList<",
            "Lcom/ypx/imagepicker/bean/ImageItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 403
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 404
    iput-object p2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$TouchImageAdapter;->imageItems:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    .line 406
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$TouchImageAdapter;->imageItems:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$TouchImageAdapter;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$TouchImageAdapter;->imageItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;->newInstance(Lcom/ypx/imagepicker/bean/ImageItem;)Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$SinglePreviewFragment;

    move-result-object p1

    return-object p1
.end method
