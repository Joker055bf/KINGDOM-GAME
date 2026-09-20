.class public final Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "VKIDExchangeTokenCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onAuthCode(Lcom/vk/id/exchangetoken/VKIDExchangeTokenCallback;Lcom/vk/id/auth/AuthCodeData;Z)V
    .locals 0

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
