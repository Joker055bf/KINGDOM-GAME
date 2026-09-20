.class Lcom/t4f/ad/permissions/TgsADPermissionsManageView$1;
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

    .line 40
    iput-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$1;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$1;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    invoke-static {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->access$000(Lcom/t4f/ad/permissions/TgsADPermissionsManageView;)Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->dismiss()V

    .line 45
    sget-object p1, Lcom/t4f/ad/permissions/TgsADPermissionsManager;->adPermissionsInterface:Lcom/t4f/ad/permissions/TgsADPermissionsInterface;

    if-eqz p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$1;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    sget v0, Lcom/t4f/android/R$id;->AnalyticsStorageSwitch:I

    invoke-virtual {p1, v0}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 48
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ad_storage,analytics_storage"

    goto :goto_0

    :cond_0
    const-string p1, "ad_storage"

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$1;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    sget v1, Lcom/t4f/android/R$id;->ADUserDataSwitch:I

    invoke-virtual {v0, v1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 52
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",ad_user_data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/t4f/ad/permissions/TgsADPermissionsManageView$1;->this$0:Lcom/t4f/ad/permissions/TgsADPermissionsManageView;

    sget v1, Lcom/t4f/android/R$id;->ADPersonalizationSwitch:I

    invoke-virtual {v0, v1}, Lcom/t4f/ad/permissions/TgsADPermissionsManageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 56
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",ad_personalization_signals"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    :cond_2
    sget-object v0, Lcom/t4f/ad/permissions/TgsADPermissionsManager;->adPermissionsInterface:Lcom/t4f/ad/permissions/TgsADPermissionsInterface;

    invoke-interface {v0, p1}, Lcom/t4f/ad/permissions/TgsADPermissionsInterface;->adPermissionsCallback(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
