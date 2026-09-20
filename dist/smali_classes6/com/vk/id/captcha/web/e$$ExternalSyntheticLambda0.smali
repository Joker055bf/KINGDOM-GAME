.class public final synthetic Lcom/vk/id/captcha/web/e$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;

.field public final synthetic f$1:Lcom/vk/id/captcha/web/e;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;Lcom/vk/id/captcha/web/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/captcha/web/e$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/vk/id/captcha/web/e$$ExternalSyntheticLambda0;->f$1:Lcom/vk/id/captcha/web/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vk/id/captcha/web/e$$ExternalSyntheticLambda0;->f$0:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/vk/id/captcha/web/e$$ExternalSyntheticLambda0;->f$1:Lcom/vk/id/captcha/web/e;

    invoke-static {v0, v1}, Lcom/vk/id/captcha/web/e;->$r8$lambda$mZegj9CsL3IJLWe-Zue5TC8HyA8(Lorg/json/JSONObject;Lcom/vk/id/captcha/web/e;)V

    return-void
.end method
