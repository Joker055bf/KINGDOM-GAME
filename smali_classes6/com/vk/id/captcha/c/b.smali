.class public final Lcom/vk/id/captcha/c/b;
.super Ljava/lang/Object;
.source "AndroidSensorListener.kt"


# static fields
.field private static final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/vk/id/captcha/c/b$1;->a:Lcom/vk/id/captcha/c/b$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vk/id/captcha/c/b;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static final a()Lcom/vk/id/captcha/c/d;
    .locals 1

    .line 11
    sget-object v0, Lcom/vk/id/captcha/c/b;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/captcha/c/d;

    return-object v0
.end method
