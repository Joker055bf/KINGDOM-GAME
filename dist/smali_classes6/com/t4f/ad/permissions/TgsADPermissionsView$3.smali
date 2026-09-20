.class Lcom/t4f/ad/permissions/TgsADPermissionsView$3;
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


# direct methods
.method constructor <init>(Lcom/t4f/ad/permissions/TgsADPermissionsView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsView$3;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsView$3;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsView;

    invoke-static {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->access$000(Lcom/t4f/ad/permissions/TgsADPermissionsView;)Lcom/t4f/ad/permissions/TgsADPermissionsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->dismiss()V

    .line 75
    sget-object p1, Lcom/t4f/ad/permissions/TgsADPermissionsManager;->adPermissionsInterface:Lcom/t4f/ad/permissions/TgsADPermissionsInterface;

    if-eqz p1, :cond_0

    const-string p1, "ad_storage"

    .line 77
    sget-object v0, Lcom/t4f/ad/permissions/TgsADPermissionsManager;->adPermissionsInterface:Lcom/t4f/ad/permissions/TgsADPermissionsInterface;

    invoke-interface {v0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsInterface;->adPermissionsCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
