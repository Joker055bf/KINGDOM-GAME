.class Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;
.super Ljava/lang/Object;
.source "PreviewControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getItemView(Landroidx/fragment/app/Fragment;Lcom/ypx/imagepicker/bean/ImageItem;Lcom/ypx/imagepicker/presenter/IPickerPresenter;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

.field final synthetic val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/views/base/PreviewControllerView;Lcom/ypx/imagepicker/bean/ImageItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    iput-object p2, p0, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 147
    iget-object p1, p0, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/bean/ImageItem;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/bean/ImageItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;->val$imageItem:Lcom/ypx/imagepicker/bean/ImageItem;

    iget-object v2, v2, Lcom/ypx/imagepicker/bean/ImageItem;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/utils/PickerFileProvider;->getUriForFile(Landroid/app/Activity;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    const-string v1, "video/*"

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {v0}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/ypx/imagepicker/views/base/PreviewControllerView$1;->this$0:Lcom/ypx/imagepicker/views/base/PreviewControllerView;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/views/base/PreviewControllerView;->singleTap()V

    return-void
.end method
