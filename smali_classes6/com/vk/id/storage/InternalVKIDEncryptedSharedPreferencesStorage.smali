.class public final Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;
.super Ljava/lang/Object;
.source "InternalVKIDEncryptedSharedPreferencesStorage.kt"

# interfaces
.implements Lcom/vk/id/storage/InternalVKIDPreferencesStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInternalVKIDEncryptedSharedPreferencesStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InternalVKIDEncryptedSharedPreferencesStorage.kt\ncom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,53:1\n43#2,8:54\n*S KotlinDebug\n*F\n+ 1 InternalVKIDEncryptedSharedPreferencesStorage.kt\ncom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage\n*L\n40#1:54,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003H\u0002R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;",
        "Lcom/vk/id/storage/InternalVKIDPreferencesStorage;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "sharedPreferences$delegate",
        "Lkotlin/Lazy;",
        "set",
        "",
        "key",
        "",
        "value",
        "getString",
        "createSharedPreferences",
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

.field private static final Companion:Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$Companion;

.field public static final FILE_NAME:Ljava/lang/String; = "vkid_encrypted_shared_prefs"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final sharedPreferences$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$gdGlGfw9LJYWGFq01sXFae4jX3I(Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->sharedPreferences_delegate$lambda$0(Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->Companion:Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$$ExternalSyntheticLambda0;-><init>(Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->sharedPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final createSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    .line 48
    new-instance v0, Landroidx/security/crypto/MasterKey$Builder;

    invoke-direct {v0, p1}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroidx/security/crypto/MasterKey$KeyScheme;->AES256_GCM:Landroidx/security/crypto/MasterKey$KeyScheme;

    invoke-virtual {v0, v1}, Landroidx/security/crypto/MasterKey$Builder;->setKeyScheme(Landroidx/security/crypto/MasterKey$KeyScheme;)Landroidx/security/crypto/MasterKey$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/security/crypto/MasterKey$Builder;->build()Landroidx/security/crypto/MasterKey;

    move-result-object v0

    .line 49
    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 50
    sget-object v2, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    const-string v3, "vkid_encrypted_shared_prefs"

    .line 45
    invoke-static {p1, v3, v0, v1, v2}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/MasterKey;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->sharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static final sharedPreferences_delegate$lambda$0(Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->createSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "vkid_encrypted_shared_prefs"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    .line 35
    invoke-direct {p0, p1}, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->createSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
