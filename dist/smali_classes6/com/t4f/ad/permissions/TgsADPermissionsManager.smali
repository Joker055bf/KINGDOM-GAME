.class public Lcom/t4f/ad/permissions/TgsADPermissionsManager;
.super Ljava/lang/Object;
.source "TgsADPermissionsManager.java"


# static fields
.field public static adPermissionsInterface:Lcom/t4f/ad/permissions/TgsADPermissionsInterface;

.field private static adPermissionsView:Lcom/t4f/ad/permissions/TgsADPermissionsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/t4f/ad/permissions/TgsADPermissionsInterface;)V
    .locals 2

    .line 12
    new-instance v0, Lcom/t4f/ad/permissions/TgsADPermissionsView;

    sget v1, Lcom/t4f/android/R$style;->NoTitleDialogTheme:I

    invoke-direct {v0, p0, v1}, Lcom/t4f/ad/permissions/TgsADPermissionsView;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/t4f/ad/permissions/TgsADPermissionsManager;->adPermissionsView:Lcom/t4f/ad/permissions/TgsADPermissionsView;

    .line 13
    invoke-virtual {v0}, Lcom/t4f/ad/permissions/TgsADPermissionsView;->show()V

    .line 15
    sput-object p1, Lcom/t4f/ad/permissions/TgsADPermissionsManager;->adPermissionsInterface:Lcom/t4f/ad/permissions/TgsADPermissionsInterface;

    return-void
.end method
