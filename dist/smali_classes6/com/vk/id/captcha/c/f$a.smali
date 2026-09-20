.class public final Lcom/vk/id/captcha/c/f$a;
.super Ljava/lang/Object;
.source "SensorsDataRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "Lcom/vk/id/captcha/c/f$a;",
        "",
        "Landroid/content/Context;",
        "p0",
        "Lcom/vk/id/captcha/c/f;",
        "a",
        "(Landroid/content/Context;)Lcom/vk/id/captcha/c/f;",
        "<init>",
        "()V"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/id/captcha/c/f$a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/vk/id/captcha/c/f;
    .locals 17

    const-string v0, ""

    move-object/from16 v8, p0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/vk/id/captcha/c/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 124
    new-instance v1, Lcom/vk/id/captcha/c/f$a$a;

    sget-object v2, Lcom/vk/id/captcha/c/a/a$a;->a:Lcom/vk/id/captcha/c/a/a$a$a;

    invoke-direct {v1, v2}, Lcom/vk/id/captcha/c/f$a$a;-><init>(Lcom/vk/id/captcha/c/a/a$a$a;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    .line 121
    invoke-direct/range {v1 .. v7}, Lcom/vk/id/captcha/c/a;-><init>(Landroid/content/Context;Lcom/vk/id/captcha/c/d;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    new-instance v9, Lcom/vk/id/captcha/c/a;

    const/4 v4, 0x4

    .line 129
    new-instance v1, Lcom/vk/id/captcha/c/f$a$b;

    sget-object v2, Lcom/vk/id/captcha/c/a/a$b;->a:Lcom/vk/id/captcha/c/a/a$b$a;

    invoke-direct {v1, v2}, Lcom/vk/id/captcha/c/f$a$b;-><init>(Lcom/vk/id/captcha/c/a/a$b$a;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v1, v9

    move-object/from16 v2, p0

    .line 126
    invoke-direct/range {v1 .. v7}, Lcom/vk/id/captcha/c/a;-><init>(Landroid/content/Context;Lcom/vk/id/captcha/c/d;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    new-instance v10, Lcom/vk/id/captcha/c/a;

    const/16 v4, 0xb

    .line 134
    new-instance v1, Lcom/vk/id/captcha/c/f$a$c;

    sget-object v2, Lcom/vk/id/captcha/c/a/a$c;->a:Lcom/vk/id/captcha/c/a/a$c$a;

    invoke-direct {v1, v2}, Lcom/vk/id/captcha/c/f$a$c;-><init>(Lcom/vk/id/captcha/c/a/a$c$a;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v1, v10

    move-object/from16 v2, p0

    .line 131
    invoke-direct/range {v1 .. v7}, Lcom/vk/id/captcha/c/a;-><init>(Landroid/content/Context;Lcom/vk/id/captcha/c/d;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    new-instance v1, Lcom/vk/id/captcha/c/f;

    .line 138
    sget-object v2, Lcom/vk/id/captcha/b/a;->a:Lcom/vk/id/captcha/b/a$a;

    invoke-static {}, Lcom/vk/id/captcha/b/a$a;->a()Lcom/vk/id/captcha/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/id/captcha/b/a;->c()Landroid/os/Handler;

    move-result-object v12

    .line 139
    move-object v13, v0

    check-cast v13, Lcom/vk/id/captcha/c/c;

    .line 140
    move-object v14, v9

    check-cast v14, Lcom/vk/id/captcha/c/c;

    .line 141
    move-object v15, v10

    check-cast v15, Lcom/vk/id/captcha/c/c;

    const/16 v16, 0x0

    move-object v11, v1

    .line 137
    invoke-direct/range {v11 .. v16}, Lcom/vk/id/captcha/c/f;-><init>(Landroid/os/Handler;Lcom/vk/id/captcha/c/c;Lcom/vk/id/captcha/c/c;Lcom/vk/id/captcha/c/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
