.class public final synthetic Lcom/vk/id/refresh/VKIDTokenRefresher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

.field public final synthetic f$1:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    iput-object p2, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$$ExternalSyntheticLambda0;->f$1:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/refresh/VKIDTokenRefresher;

    iget-object v1, p0, Lcom/vk/id/refresh/VKIDTokenRefresher$$ExternalSyntheticLambda0;->f$1:Lcom/vk/id/refresh/VKIDRefreshTokenCallback;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Lcom/vk/id/refresh/VKIDTokenRefresher;->$r8$lambda$pMGtxKjfQuvwFkw3m3Rng_Q7Gl0(Lcom/vk/id/refresh/VKIDTokenRefresher;Lcom/vk/id/refresh/VKIDRefreshTokenCallback;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
