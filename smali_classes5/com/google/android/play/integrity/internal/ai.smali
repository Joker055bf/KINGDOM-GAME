.class public final Lcom/google/android/play/integrity/internal/ai;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.4.0"


# static fields
.field private static final a:Lcom/google/android/play/integrity/internal/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/integrity/internal/s;

    const-string v1, "PhoneskyVerificationUtils"

    invoke-direct {v0, v1}, Lcom/google/android/play/integrity/internal/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/integrity/internal/ai;->a:Lcom/google/android/play/integrity/internal/s;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.vending"

    const/16 v1, 0x40

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ai;->c([Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "Play Store package is not found."

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    sget-object p0, Lcom/google/android/play/integrity/internal/ai;->a:Lcom/google/android/play/integrity/internal/s;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Play Store package is disabled."

    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/google/android/play/integrity/internal/s;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x40

    .line 4
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6
    invoke-static {p0}, Lcom/google/android/play/integrity/internal/ai;->c([Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 2
    :catch_0
    sget-object p0, Lcom/google/android/play/integrity/internal/ai;->a:Lcom/google/android/play/integrity/internal/s;

    new-array v1, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/play/integrity/internal/s;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 6
    :catch_1
    sget-object p0, Lcom/google/android/play/integrity/internal/ai;->a:Lcom/google/android/play/integrity/internal/s;

    new-array v1, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/play/integrity/internal/s;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return v2
.end method

.method private static c([Landroid/content/pm/Signature;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_4

    .line 3
    aget-object v5, p0, v3

    .line 4
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/play/integrity/internal/ah;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    .line 6
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v7, "dev-keys"

    .line 7
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v7, "test-keys"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string v6, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    .line 8
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    sget-object p0, Lcom/google/android/play/integrity/internal/ai;->a:Lcom/google/android/play/integrity/internal/s;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Play Store package certs are not valid. Found these sha256 certs: [%s]."

    .line 10
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/google/android/play/integrity/internal/s;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return v0

    .line 1
    :cond_6
    :goto_2
    sget-object p0, Lcom/google/android/play/integrity/internal/ai;->a:Lcom/google/android/play/integrity/internal/s;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Play Store package is not signed -- possibly self-built package. Could not verify."

    invoke-virtual {p0, v2, v1}, Lcom/google/android/play/integrity/internal/s;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return v0
.end method
