.class public final synthetic Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/internal/api/VKIDApiService;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/internal/api/VKIDApiService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda5;->f$0:Lcom/vk/id/internal/api/VKIDApiService;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/id/internal/api/VKIDApiService$$ExternalSyntheticLambda5;->f$0:Lcom/vk/id/internal/api/VKIDApiService;

    check-cast p1, Lcom/vk/id/network/http/HttpResponse;

    invoke-static {v0, p1}, Lcom/vk/id/internal/api/VKIDApiService;->$r8$lambda$BKILKhhfUoFphztfpMMLiI58_-Q(Lcom/vk/id/internal/api/VKIDApiService;Lcom/vk/id/network/http/HttpResponse;)Lcom/vk/id/internal/auth/VKIDTokenPayload;

    move-result-object p1

    return-object p1
.end method
