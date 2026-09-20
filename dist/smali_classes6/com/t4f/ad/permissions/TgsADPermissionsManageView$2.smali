.class Lcom/t4f/ad/permissions/TgsADPermissionsManageView$2;
.super Ljava/lang/Object;
.source "TgsADPermissionsManageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4f/ad/permissions/TgsADPermissionsManageView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;


# direct methods
.method constructor <init>(Lcom/t4f/ad/permissions/TgsADPermissionsManageView;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$2;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$2;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    invoke-static {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->access$000(Lcom/t4f/ad/permissions/TgsADPermissionsManageView;)Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->dismiss()V

    .line 69
    sget-object p1, Lcom/t4f/ad/permissions/TgsADPermissionsManager;->adPermissionsInterface:Lcom/t4f/ad/permissions/TgsADPermissionsInterface;

    if-eqz p1, :cond_0

    const-string p1, "ad_storage"

    .line 71
    sget-object v0, Lcom/t4f/ad/permissions/TgsADPermissionsManager;->adPermissionsInterface:Lcom/t4f/ad/permissions/TgsADPermissionsInterface;

    invoke-interface {v0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsInterface;->adPermissionsCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
