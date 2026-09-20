.class final Lcom/vk/id/captcha/c/f$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SensorsDataRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/captcha/c/f;->a(Ljava/util/List;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vk/id/captcha/c/a/a$b;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/vk/id/captcha/c/a/a$b;",
        "p0",
        "",
        "a",
        "(Lcom/vk/id/captcha/c/a/a$b;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private synthetic $b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/captcha/c/a/a;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic a:Lcom/vk/id/captcha/c/f;


# direct methods
.method constructor <init>(Lcom/vk/id/captcha/c/f;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/id/captcha/c/f;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/captcha/c/a/a;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/id/captcha/c/f$2;->a:Lcom/vk/id/captcha/c/f;

    iput-object p2, p0, Lcom/vk/id/captcha/c/f$2;->$b:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/id/captcha/c/a/a$b;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/vk/id/captcha/c/f$2;->a:Lcom/vk/id/captcha/c/f;

    invoke-static {v0, p1}, Lcom/vk/id/captcha/c/f;->a(Lcom/vk/id/captcha/c/f;Lcom/vk/id/captcha/c/a/a$b;)V

    .line 56
    iget-object p1, p0, Lcom/vk/id/captcha/c/f$2;->a:Lcom/vk/id/captcha/c/f;

    iget-object v0, p0, Lcom/vk/id/captcha/c/f$2;->$b:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lcom/vk/id/captcha/c/f;->a(Lcom/vk/id/captcha/c/f;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lcom/vk/id/captcha/c/a/a$b;

    invoke-virtual {p0, p1}, Lcom/vk/id/captcha/c/f$2;->a(Lcom/vk/id/captcha/c/a/a$b;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
