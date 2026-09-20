.class Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;
.super Ljava/lang/Object;
.source "MultiImagePreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->initViewPager(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;->this$0:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;->this$0:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-static {v0, p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->access$002(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;I)I

    .line 370
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;->this$0:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-static {p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->access$100(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;->this$0:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->access$000(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/bean/ImageItem;

    .line 371
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;->this$0:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->access$200(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    move-result-object v0

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;->this$0:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-static {v1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->access$000(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$2;->this$0:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    invoke-static {v2}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->access$100(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->onPageSelected(ILcom/ypx/imagepicker/bean/ImageItem;I)V

    return-void
.end method
