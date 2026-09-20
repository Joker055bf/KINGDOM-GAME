.class Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;
.super Ljava/lang/Object;
.source "SingleCropActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->generateCropFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;->this$0:Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;

    iput-object p2, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;->this$0:Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->access$000(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;)Landroid/content/DialogInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;->this$0:Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;

    invoke-static {v0}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->access$000(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;->this$0:Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;

    iget-object v1, p0, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;->access$100(Lcom/ypx/imagepicker/activity/singlecrop/SingleCropActivity;Ljava/lang/String;)V

    return-void
.end method
