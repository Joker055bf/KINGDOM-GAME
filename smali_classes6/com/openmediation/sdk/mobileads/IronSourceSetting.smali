.class public Lcom/openmediation/sdk/mobileads/IronSourceSetting;
.super Ljava/lang/Object;
.source "IronSourceSetting.java"


# static fields
.field private static mMediationMode:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediationMode()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->mMediationMode:Z

    return v0
.end method

.method public static setMediationMode(Z)V
    .locals 0

    .line 12
    sput-boolean p0, Lcom/openmediation/sdk/mobileads/IronSourceSetting;->mMediationMode:Z

    return-void
.end method
