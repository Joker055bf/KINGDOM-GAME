.class final synthetic Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$b;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "VKCaptchaWebViewActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/vk/id/captcha/c/a/a;",
        ">;",
        "Lkotlin/Unit;",
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
.method constructor <init>(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    const-string v4, "sendVKCaptchaListenSensorsChangedEvent"

    const-string v5, "sendVKCaptchaListenSensorsChangedEvent(Ljava/util/List;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/id/captcha/c/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$b;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;

    invoke-static {v0, p1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;->a(Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/vk/id/captcha/web/VKCaptchaWebViewActivity$b;->a(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
