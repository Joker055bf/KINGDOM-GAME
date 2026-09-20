.class Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$1;
.super Ljava/lang/Object;
.source "MultiImagePreviewActivity.java"

# interfaces
.implements Lcom/ypx/imagepicker/helper/launcher/PLauncher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity;->intent(Landroid/app/Activity;Lcom/ypx/imagepicker/bean/ImageSet;Ljava/util/ArrayList;Lcom/ypx/imagepicker/bean/selectconfig/MultiSelectConfig;Lcom/ypx/imagepicker/presenter/IPickerPresenter;ILcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$1;->val$result:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "pickerResult"

    .line 111
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 114
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$1;->val$result:Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p2, p1}, Lcom/ypx/imagepicker/activity/preview/MultiImagePreviewActivity$PreviewResult;->onResult(Ljava/util/ArrayList;Z)V

    :cond_1
    return-void
.end method
