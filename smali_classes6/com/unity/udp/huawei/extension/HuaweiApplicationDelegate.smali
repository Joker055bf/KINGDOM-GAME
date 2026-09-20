.class public Lcom/unity/udp/huawei/extension/HuaweiApplicationDelegate;
.super Ljava/lang/Object;
.source "HuaweiApplicationDelegate.java"

# interfaces
.implements Lcom/unity/udp/extension/sdk/ApplicationDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appInit(Landroid/app/Application;)V
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/huawei/hms/api/HuaweiMobileServicesUtil;->setApplication(Landroid/app/Application;)V

    return-void
.end method
