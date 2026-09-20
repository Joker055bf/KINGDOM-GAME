.class final synthetic Lcom/vk/id/captcha/c/f$a$c;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SensorsDataRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/captcha/c/f$a;->a(Landroid/content/Context;)Lcom/vk/id/captcha/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "[F",
        "Lcom/vk/id/captcha/c/a/a$c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Lcom/vk/id/captcha/c/a/a$c$a;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Lcom/vk/id/captcha/c/a/a$c$a;

    const-string v4, "a"

    const-string v5, "a([F)Lcom/vk/id/captcha/c/a/a$c;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a([F)Lcom/vk/id/captcha/c/a/a$c;
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/vk/id/captcha/c/f$a$c;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/vk/id/captcha/c/a/a$c$a;

    invoke-virtual {v0, p1}, Lcom/vk/id/captcha/c/a/a$c$a;->a([F)Lcom/vk/id/captcha/c/a/a$c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lcom/vk/id/captcha/c/f$a$c;->a([F)Lcom/vk/id/captcha/c/a/a$c;

    move-result-object p1

    return-object p1
.end method
