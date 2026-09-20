.class Lcom/ypx/imagepicker/utils/PPermissionUtils$2;
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


# direct methods
.method constructor <init>(Lcom/ypx/imagepicker/utils/PPermissionUtils;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils$2;->this$0:Lcom/ypx/imagepicker/utils/PPermissionUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    iget-object p1, p0, Lcom/ypx/imagepicker/utils/PPermissionUtils$2;->this$0:Lcom/ypx/imagepicker/utils/PPermissionUtils;

    invoke-virtual {p1}, Lcom/ypx/imagepicker/utils/PPermissionUtils;->gotoPermissionSet()V

    return-void
.end method
