.class public Lcom/unity/hms/listener/BuildAdListener;
.super Ljava/lang/Object;
.source "BuildAdListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BuildAdListener(Lcom/unity/hms/listener/IAdListener;)Lcom/huawei/hms/ads/AdListener;
    .locals 1

    .line 7
    new-instance v0, Lcom/unity/hms/listener/BuildAdListener$1;

    invoke-direct {v0, p0}, Lcom/unity/hms/listener/BuildAdListener$1;-><init>(Lcom/unity/hms/listener/IAdListener;)V

    return-object v0
.end method
