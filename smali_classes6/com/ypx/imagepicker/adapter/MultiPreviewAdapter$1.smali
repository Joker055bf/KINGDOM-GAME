.class Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$1;
.super Ljava/lang/Object;
.source "MultiPreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->onBindViewHolder(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

.field final synthetic val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$1;->this$0:Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

    iput-object p2, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$1;->this$0:Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->access$100(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$1;->this$0:Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;

    invoke-static {p1}, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;->access$100(Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;

    iget-object v0, p0, Lcom/ypx/imagepicker/adapter/MultiPreviewAdapter$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->onPreviewItemClick(Lcom/ypx/imagepicker/bean/ImageItem;)V

    :cond_0
    return-void
.end method
