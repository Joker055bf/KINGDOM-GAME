.class public final Lcom/chartboost/sdk/privacy/model/Custom;
.super Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/chartboost/sdk/privacy/model/Custom;",
        "Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;",
        "",
        "b",
        "",
        "consent",
        "",
        "d",
        "privacyStandard",
        "c",
        "Ljava/lang/String;",
        "customPrivacyStandard",
        "customConsent",
        "getConsent",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
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
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "customPrivacyStandard"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customConsent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/privacy/model/Custom;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/chartboost/sdk/privacy/model/Custom;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/chartboost/sdk/privacy/model/Custom;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/privacy/model/Custom;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/chartboost/sdk/privacy/model/Custom;->d:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/privacy/model/Custom;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/Custom;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Invalid Custom privacy standard name. Cannot use GDPR as privacy standard"

    .line 7
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->a(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/privacy/model/Custom;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/Custom;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/privacy/model/Custom;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/Custom;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/privacy/model/Custom;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->b(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/chartboost/sdk/privacy/model/Custom;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->a(Ljava/lang/Object;)V

    return-void

    .line 22
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Custom consent values. Use valid values between 1 and 100 characters. privacyStandard: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/chartboost/sdk/privacy/model/Custom;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " consent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/chartboost/sdk/privacy/model/Custom;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    const-string v0, "Invalid Custom privacy standard name. Values cannot be null"

    .line 30
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "gdpr"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_0

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic getConsent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/privacy/model/Custom;->getConsent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsent()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
