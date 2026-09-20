.class public final Lcom/chartboost/sdk/impl/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR$\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/a0;",
        "",
        "",
        "a",
        "Landroid/content/Context;",
        "context",
        "",
        "Lcom/chartboost/sdk/impl/u5;",
        "googlePlayServicesAdvertisingIDState",
        "Lcom/chartboost/sdk/impl/u5;",
        "c",
        "()Lcom/chartboost/sdk/impl/u5;",
        "setGooglePlayServicesAdvertisingIDState",
        "(Lcom/chartboost/sdk/impl/u5;)V",
        "",
        "googlePlayServicesAdvertisingID",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "setGooglePlayServicesAdvertisingID",
        "(Ljava/lang/String;)V",
        "<init>",
        "(Landroid/content/Context;)V",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public c:Lcom/chartboost/sdk/impl/u5;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/a0;->a:Landroid/content/Context;

    const-string p1, "a0"

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/a0;->b:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/chartboost/sdk/impl/u5;->b:Lcom/chartboost/sdk/impl/u5;

    iput-object p1, p0, Lcom/chartboost/sdk/impl/a0;->c:Lcom/chartboost/sdk/impl/u5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "TAG"

    .line 1
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a0;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/a0;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    sget-object v0, Lcom/chartboost/sdk/impl/u5;->d:Lcom/chartboost/sdk/impl/u5;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/a0;->c:Lcom/chartboost/sdk/impl/u5;

    .line 3
    iput-object v2, p0, Lcom/chartboost/sdk/impl/a0;->d:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    sget-object v1, Lcom/chartboost/sdk/impl/u5;->d:Lcom/chartboost/sdk/impl/u5;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/a0;->c:Lcom/chartboost/sdk/impl/u5;

    .line 11
    iput-object v2, p0, Lcom/chartboost/sdk/impl/a0;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 13
    :cond_1
    sget-object v3, Lcom/chartboost/sdk/impl/u5;->c:Lcom/chartboost/sdk/impl/u5;

    iput-object v3, p0, Lcom/chartboost/sdk/impl/a0;->c:Lcom/chartboost/sdk/impl/u5;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/a0;->d:Ljava/lang/String;

    const-string v3, "00000000-0000-0000-0000-000000000000"

    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    sget-object v1, Lcom/chartboost/sdk/impl/u5;->d:Lcom/chartboost/sdk/impl/u5;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/a0;->c:Lcom/chartboost/sdk/impl/u5;

    .line 19
    iput-object v2, p0, Lcom/chartboost/sdk/impl/a0;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 33
    iget-object v2, p0, Lcom/chartboost/sdk/impl/a0;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Google play service is not available. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 34
    iget-object v2, p0, Lcom/chartboost/sdk/impl/a0;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "There was a recoverable error connecting to Google Play Services. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v2, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 37
    iget-object v2, p0, Lcom/chartboost/sdk/impl/a0;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "The connection to Google Play Services failed. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 38
    iget-object v2, p0, Lcom/chartboost/sdk/impl/a0;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "This should have been called off the main thread. "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "coppa"

    .line 39
    invoke-static {p1, v1}, Lcom/chartboost/sdk/Chartboost;->getDataUseConsent(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/sdk/privacy/model/DataUseConsent;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getConsent()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 41
    iget-object v1, p0, Lcom/chartboost/sdk/impl/a0;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isChildDirected error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/chartboost/sdk/impl/u5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/a0;->c:Lcom/chartboost/sdk/impl/u5;

    return-object v0
.end method
