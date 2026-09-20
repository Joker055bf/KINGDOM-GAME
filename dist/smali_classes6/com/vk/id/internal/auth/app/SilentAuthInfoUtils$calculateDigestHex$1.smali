.class final synthetic Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$calculateDigestHex$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SilentAuthInfoUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->calculateDigestHex(Lcom/vk/id/internal/context/InternalVKIDPackageManager;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/pm/Signature;",
        "Ljava/lang/String;",
        ">;"
    }
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
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;

    const-string v4, "calculateDigestHex"

    const-string v5, "calculateDigestHex(Landroid/content/pm/Signature;)Ljava/lang/String;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Landroid/content/pm/Signature;

    invoke-virtual {p0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$calculateDigestHex$1;->invoke(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils$calculateDigestHex$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;

    invoke-static {v0, p1}, Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;->access$calculateDigestHex(Lcom/vk/id/internal/auth/app/SilentAuthInfoUtils;Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
