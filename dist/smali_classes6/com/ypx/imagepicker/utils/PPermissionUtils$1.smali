.class Lcom/ypx/imagepicker/utils/PPermissionUtils$1;
.super Ljava/lang/Object;
.source "PPermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ypx/imagepicker/utils/PPermissionUtils;->showSetPermissionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ypx/imagepicker/utils/PPermissionUtils;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/utils/PPermissionUtils;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils$1;->this$0:Lcom/ypx/imagepicker/utils/PPermissionUtils;

    iput-object p2, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 75
    iget-object p1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils$1;->val$msg:Ljava/lang/String;

    iget-object p2, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils$1;->this$0:Lcom/ypx/imagepicker/utils/PPermissionUtils;

    invoke-static {p2}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->access$000(Lcom/ypx/imagepicker/utils/PPermissionUtils;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/ypx/imagepicker/R$string;->picker_str_storage_permission:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils$1;->this$0:Lcom/ypx/imagepicker/utils/PPermissionUtils;

    invoke-static {p1}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->access$000(Lcom/ypx/imagepicker/utils/PPermissionUtils;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
