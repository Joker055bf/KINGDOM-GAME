.class public final synthetic Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vk/id/network/http/HttpResponse;

    invoke-static {p1}, Lcom/vk/id/internal/api/VKIDApiService;->$r8$lambda$rvwSYXZrLCICcBWnJu2cIg1L1YE(Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDCodePayload;

    move-result-object p1

    return-object p1
.end method
