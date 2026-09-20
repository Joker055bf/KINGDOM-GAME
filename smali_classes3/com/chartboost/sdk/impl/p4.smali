.class public final Lcom/chartboost/sdk/impl/p4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/o4;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/chartboost/sdk/impl/p4;",
        "Lcom/chartboost/sdk/impl/o4;",
        "Lcom/chartboost/sdk/privacy/model/DataUseConsent;",
        "dataUseConsent",
        "",
        "a",
        "Lcom/chartboost/sdk/impl/m4;",
        "mRepository",
        "<init>",
        "(Lcom/chartboost/sdk/impl/m4;)V",
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
.field public final a:Lcom/chartboost/sdk/impl/m4;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/m4;)V
    .locals 1

    const-string v0, "mRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/p4;->a:Lcom/chartboost/sdk/impl/m4;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Lcom/chartboost/sdk/privacy/model/DataUseConsent;->getPrivacyStandard()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    const-string v1, "PutDataUseConsentUseCase"

    const-string v2, ""

    if-nez v0, :cond_2

    .line 4
    :try_start_0
    new-instance p1, Lcom/chartboost/sdk/impl/i2;

    const-string v0, "consent_persistence_error"

    .line 9
    invoke-direct {p1, v0, v2, v2, v2}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "addDataUseConsent failed"

    .line 21
    invoke-static {v1, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_2
    instance-of v0, p1, Lcom/chartboost/sdk/privacy/model/GDPR;

    if-nez v0, :cond_4

    .line 26
    instance-of v0, p1, Lcom/chartboost/sdk/privacy/model/CCPA;

    if-nez v0, :cond_4

    .line 27
    instance-of v0, p1, Lcom/chartboost/sdk/privacy/model/COPPA;

    if-nez v0, :cond_4

    .line 28
    instance-of v0, p1, Lcom/chartboost/sdk/privacy/model/Custom;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 34
    :cond_3
    :try_start_1
    new-instance v0, Lcom/chartboost/sdk/impl/q2;

    const-string v3, "consent_subclassing_error"

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-direct {v0, v3, p1, v2, v2}, Lcom/chartboost/sdk/impl/q2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string p1, "Attempt to addDataUseConsent. Context and DataUseConsent cannot be null."

    .line 51
    invoke-static {v1, p1}, Lcom/chartboost/sdk/impl/s3;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 52
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/p4;->a:Lcom/chartboost/sdk/impl/m4;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/m4;->b(Lcom/chartboost/sdk/privacy/model/DataUseConsent;)V

    :goto_2
    return-void
.end method
