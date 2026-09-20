.class Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$1;
.super Ljava/lang/Object;
.source "SingleCropActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->setControllerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$1;->this$0:Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 150
    invoke-static {}, Lcom/ypx/imagepicker/utils/PViewSizeUtils;->onDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$1;->this$0:Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crop_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->generateCropFile(Ljava/lang/String;)V

    return-void
.end method
