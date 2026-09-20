.class public final synthetic Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;

    iput-object p2, p0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$$ExternalSyntheticLambda0;->f$0:Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;

    iget-object v1, p0, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;->$r8$lambda$gdGlGfw9LJYWGFq01sXFae4jX3I(Lcom/vk/id/storage/InternalVKIDEncryptedSharedPreferencesStorage;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
