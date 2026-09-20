.class public final Lru/ok/tracer/base/inject/ProviderUtils;
.super Ljava/lang/Object;
.source "ProviderUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001f\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "providerOf",
        "Ljavax/inject/Provider;",
        "T",
        "value",
        "(Ljava/lang/Object;)Ljavax/inject/Provider;",
        "tracer-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final providerOf(Ljava/lang/Object;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lru/ok/tracer/base/inject/SimpleProvider;

    invoke-direct {v0, p0}, Lru/ok/tracer/base/inject/SimpleProvider;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljavax/inject/Provider;

    return-object v0
.end method
