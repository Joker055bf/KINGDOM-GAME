.class public final Lcom/vk/id/storage/InternalVKIDTokenStorage;
.super Ljava/lang/Object;
.source "InternalVKIDTokenStorage.kt"


# annotations
.annotation runtime Lcom/vk/id/common/InternalVKIDApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/storage/InternalVKIDTokenStorage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInternalVKIDTokenStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternalVKIDTokenStorage.kt\ncom/vk/id/storage/InternalVKIDTokenStorage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n1#2:48\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0017\u001a\u00020\u0018H\u0000\u00a2\u0006\u0002\u0008\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t8@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000cR(\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00118@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vk/id/storage/InternalVKIDTokenStorage;",
        "",
        "preferences",
        "Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
        "<init>",
        "(Lcom/vk/id/storage/InternalVKIDPreferencesStorage;)V",
        "gson",
        "Lcom/google/gson/Gson;",
        "value",
        "Lcom/vk/id/AccessToken;",
        "accessToken",
        "getAccessToken$vkid_release",
        "()Lcom/vk/id/AccessToken;",
        "setAccessToken$vkid_release",
        "(Lcom/vk/id/AccessToken;)V",
        "currentAccessToken",
        "getCurrentAccessToken",
        "Lcom/vk/id/RefreshToken;",
        "refreshToken",
        "getRefreshToken$vkid_release",
        "()Lcom/vk/id/RefreshToken;",
        "setRefreshToken$vkid_release",
        "(Lcom/vk/id/RefreshToken;)V",
        "clear",
        "",
        "clear$vkid_release",
        "Companion",
        "vkid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "ACCESS_TOKEN_KEY"

.field public static final Companion:Lcom/vk/id/storage/InternalVKIDTokenStorage$Companion;

.field private static final REFRESH_TOKEN_V1_KEY:Ljava/lang/String; = "REFRESH_TOKEN_KEY"

.field private static final REFRESH_TOKEN_V2_KEY:Ljava/lang/String; = "REFRESH_TOKEN_WITH_SCOPES_KEY"


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final preferences:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/storage/InternalVKIDTokenStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/storage/InternalVKIDTokenStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->Companion:Lcom/vk/id/storage/InternalVKIDTokenStorage$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/vk/id/storage/InternalVKIDPreferencesStorage;)V
    .locals 1

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->preferences:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    .line 15
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final clear$vkid_release()V
    .locals 3

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->setAccessToken$vkid_release(Lcom/vk/id/AccessToken;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->setRefreshToken$vkid_release(Lcom/vk/id/RefreshToken;)V

    .line 38
    iget-object v1, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->preferences:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    const-string v2, "REFRESH_TOKEN_KEY"

    invoke-interface {v1, v2, v0}, Lcom/vk/id/storage/InternalVKIDPreferencesStorage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAccessToken$vkid_release()Lcom/vk/id/AccessToken;
    .locals 3

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->preferences:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    const-string v2, "ACCESS_TOKEN_KEY"

    invoke-interface {v1, v2}, Lcom/vk/id/storage/InternalVKIDPreferencesStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/vk/id/AccessToken;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/id/AccessToken;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCurrentAccessToken()Lcom/vk/id/AccessToken;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/vk/id/storage/InternalVKIDTokenStorage;->getAccessToken$vkid_release()Lcom/vk/id/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public final getRefreshToken$vkid_release()Lcom/vk/id/RefreshToken;
    .locals 4

    const/4 v0, 0x0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->preferences:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    const-string v2, "REFRESH_TOKEN_WITH_SCOPES_KEY"

    invoke-interface {v1, v2}, Lcom/vk/id/storage/InternalVKIDPreferencesStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/vk/id/RefreshToken;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/id/RefreshToken;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->preferences:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    const-string v2, "REFRESH_TOKEN_KEY"

    invoke-interface {v1, v2}, Lcom/vk/id/storage/InternalVKIDPreferencesStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/vk/id/RefreshToken;

    invoke-direct {v2, v1, v0}, Lcom/vk/id/RefreshToken;-><init>(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public final setAccessToken$vkid_release(Lcom/vk/id/AccessToken;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->preferences:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "ACCESS_TOKEN_KEY"

    invoke-interface {v0, v1, p1}, Lcom/vk/id/storage/InternalVKIDPreferencesStorage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRefreshToken$vkid_release(Lcom/vk/id/RefreshToken;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->preferences:Lcom/vk/id/storage/InternalVKIDPreferencesStorage;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vk/id/storage/InternalVKIDTokenStorage;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "REFRESH_TOKEN_WITH_SCOPES_KEY"

    invoke-interface {v0, v1, p1}, Lcom/vk/id/storage/InternalVKIDPreferencesStorage;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
