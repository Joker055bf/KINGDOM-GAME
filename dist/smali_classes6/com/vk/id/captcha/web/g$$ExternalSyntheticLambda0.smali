.class public final synthetic Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/webkit/WebResourceRequest;

.field public final synthetic f$1:Lcom/vk/id/captcha/web/g;

.field public final synthetic f$2:Landroid/webkit/WebResourceResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebResourceRequest;Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/WebResourceRequest;

    iput-object p2, p0, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;->f$1:Lcom/vk/id/captcha/web/g;

    iput-object p3, p0, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;->f$2:Landroid/webkit/WebResourceResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;->f$0:Landroid/webkit/WebResourceRequest;

    iget-object v1, p0, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;->f$1:Lcom/vk/id/captcha/web/g;

    iget-object v2, p0, Lcom/vk/id/captcha/web/g$$ExternalSyntheticLambda0;->f$2:Landroid/webkit/WebResourceResponse;

    invoke-static {v0, v1, v2}, Lcom/vk/id/captcha/web/g;->$r8$lambda$frMXvbqhWrtdWSpoDw9NfpyKzNQ(Landroid/webkit/WebResourceRequest;Lcom/vk/id/captcha/web/g;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method
