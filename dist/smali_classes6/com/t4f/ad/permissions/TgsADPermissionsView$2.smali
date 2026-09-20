.class Lcom/t4f/ad/permissions/TgsADPermissionsView$2;
.super Ljava/lang/Object;
.source "TgsADPermissionsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/ad/permissions/TgsADPermissionsView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/ad/permissions/TgsADPermissionsView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/t4f/ad/permissions/TgsADPermissionsView;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsView$2;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsView;

    iput-object p2, p0, Lcom/t4f/ad/permissions/TgsADPermissionsView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsView$2;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsView;

    invoke-static {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->access$000(Lcom/t4f/ad/permissions/TgsADPermissionsView;)Lcom/t4f/ad/permissions/TgsADPermissionsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->dismiss()V

    .line 65
    new-instance p1, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    iget-object v0, p0, Lcom/t4f/ad/permissions/TgsADPermissionsView$2;->val$context:Landroid/content/Context;

    sget v1, Lcom/t4f/android/R$style;->NoTitleDialogTheme:I

    invoke-direct {p1, v0, v1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;-><init>(Landroid/content/Context;I)V

    .line 66
    invoke-virtual {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->show()V

    return-void
.end method
