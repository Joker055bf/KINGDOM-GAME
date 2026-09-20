.class final Lcom/vk/id/captcha/web/a$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LinkScheme.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/id/captcha/web/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/text/Regex;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\u000b\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/text/Regex;",
        "a",
        "()Lkotlin/text/Regex;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vk/id/captcha/web/a$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/id/captcha/web/a$1;

    invoke-direct {v0}, Lcom/vk/id/captcha/web/a$1;-><init>()V

    sput-object v0, Lcom/vk/id/captcha/web/a$1;->a:Lcom/vk/id/captcha/web/a$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/text/Regex;
    .locals 2

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(^|[a-z0-9.\\-]*\\.)(vk|vkontakte)\\.(com|ru|me)"

    .line 10
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/vk/id/captcha/web/a$1;->a()Lkotlin/text/Regex;

    move-result-object v0

    return-object v0
.end method
