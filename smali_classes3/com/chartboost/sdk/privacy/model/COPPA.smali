.class public final Lcom/chartboost/sdk/privacy/model/COPPA;
.super Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/privacy/model/COPPA$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/chartboost/sdk/privacy/model/COPPA;",
        "Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;",
        "isChildDirected",
        "",
        "(Z)V",
        "consent",
        "getConsent",
        "()Ljava/lang/Boolean;",
        "Companion",
        "Chartboost-9.2.0_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final COPPA_STANDARD:Ljava/lang/String; = "coppa"

.field public static final Companion:Lcom/chartboost/sdk/privacy/model/COPPA$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/sdk/privacy/model/COPPA$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/privacy/model/COPPA$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/sdk/privacy/model/COPPA;->Companion:Lcom/chartboost/sdk/privacy/model/COPPA$Companion;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;-><init>()V

    const-string v0, "coppa"

    .line 3
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->b(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConsent()Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/privacy/model/GenericDataUseConsent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic getConsent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/privacy/model/COPPA;->getConsent()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
